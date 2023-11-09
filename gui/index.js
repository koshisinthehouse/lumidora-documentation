const { app, BrowserWindow, Menu } = require('electron');

let mainWindow;

function createWindow() {
    // Erstelle das Hauptfenster
    mainWindow = new BrowserWindow({
        width: 800,
        height: 600,
    });

    // Lade eine Internetseite (z.B. google.de) im Hauptfenster
    mainWindow.loadURL('https://www.google.de');

    // Erstelle ein Menü
    const template = [
        {
            label: 'Datei',
            submenu: [
                {
                    label: 'Beenden',
                    role: 'quit',
                },
            ],
        },
    ];

    const menu = Menu.buildFromTemplate(template);
    Menu.setApplicationMenu(menu);

    // Öffne die Entwicklertools (optional)
    // mainWindow.webContents.openDevTools();

    // Reagiere auf das Schließen des Hauptfensters
    mainWindow.on('closed', function () {
        mainWindow = null;
    });
}

app.on('ready', createWindow);

app.on('window-all-closed', function () {
    if (process.platform !== 'darwin') app.quit();
});

app.on('activate', function () {
    if (mainWindow === null) createWindow();
});
