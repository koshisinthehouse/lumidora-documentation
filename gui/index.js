const { app, BrowserWindow, Menu, BrowserView } = require('electron');

let mainWindow;

function createWindow() {
    // Erstelle das Hauptfenster
    mainWindow = new BrowserWindow({
        width: 800,
        height: 600,
        webPreferences: {
            webviewTag: true,
            nodeIntegration: true,
        },
    });

    const view = new BrowserView()
    mainWindow.setBrowserView(view)
    view.setBounds({ x: 0, y: 0, width: 300, height: 300 })
    view.webContents.loadURL('https://electronjs.org')


    // Lade eine Internetseite (z.B. google.de) im Hauptfenster
    mainWindow.loadURL('https://prompthero.com/');

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
    //mainWindow.webContents.openDevTools();

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

