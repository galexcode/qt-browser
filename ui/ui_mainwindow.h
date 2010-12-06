/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created: Mon Dec 6 01:09:50 2010
**      by: Qt User Interface Compiler version 4.6.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLineEdit>
#include <QtGui/QMainWindow>
#include <QtGui/QProgressBar>
#include <QtGui/QPushButton>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include <QtWebKit/QWebView>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLineEdit *lineEdit;
    QPushButton *goButton;
    QWebView *webView;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *backButton;
    QPushButton *forwardButton;
    QPushButton *refreshButton;
    QProgressBar *progressBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(572, 358);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        verticalLayout = new QVBoxLayout(centralWidget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(6);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        lineEdit = new QLineEdit(centralWidget);
        lineEdit->setObjectName(QString::fromUtf8("lineEdit"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(lineEdit->sizePolicy().hasHeightForWidth());
        lineEdit->setSizePolicy(sizePolicy);

        horizontalLayout->addWidget(lineEdit);

        goButton = new QPushButton(centralWidget);
        goButton->setObjectName(QString::fromUtf8("goButton"));
        goButton->setEnabled(true);
        QSizePolicy sizePolicy1(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(goButton->sizePolicy().hasHeightForWidth());
        goButton->setSizePolicy(sizePolicy1);

        horizontalLayout->addWidget(goButton);


        verticalLayout->addLayout(horizontalLayout);

        webView = new QWebView(centralWidget);
        webView->setObjectName(QString::fromUtf8("webView"));
        QFont font;
        font.setFamily(QString::fromUtf8("Times New Roman"));
        font.setPointSize(9);
        webView->setFont(font);
        webView->setUrl(QUrl("about:blank"));

        verticalLayout->addWidget(webView);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(6);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        backButton = new QPushButton(centralWidget);
        backButton->setObjectName(QString::fromUtf8("backButton"));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/back.png"), QSize(), QIcon::Normal, QIcon::Off);
        backButton->setIcon(icon);
        backButton->setIconSize(QSize(27, 24));

        horizontalLayout_2->addWidget(backButton);

        forwardButton = new QPushButton(centralWidget);
        forwardButton->setObjectName(QString::fromUtf8("forwardButton"));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/images/forward.png"), QSize(), QIcon::Normal, QIcon::Off);
        forwardButton->setIcon(icon1);
        forwardButton->setIconSize(QSize(27, 24));

        horizontalLayout_2->addWidget(forwardButton);

        refreshButton = new QPushButton(centralWidget);
        refreshButton->setObjectName(QString::fromUtf8("refreshButton"));
        refreshButton->setStyleSheet(QString::fromUtf8(""));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/images/reload.png"), QSize(), QIcon::Normal, QIcon::Off);
        refreshButton->setIcon(icon2);
        refreshButton->setIconSize(QSize(27, 24));

        horizontalLayout_2->addWidget(refreshButton);


        verticalLayout->addLayout(horizontalLayout_2);

        progressBar = new QProgressBar(centralWidget);
        progressBar->setObjectName(QString::fromUtf8("progressBar"));
        sizePolicy.setHeightForWidth(progressBar->sizePolicy().hasHeightForWidth());
        progressBar->setSizePolicy(sizePolicy);
        progressBar->setMinimumSize(QSize(0, 0));
        progressBar->setMaximumSize(QSize(999, 999));
        progressBar->setValue(24);
        progressBar->setTextVisible(false);

        verticalLayout->addWidget(progressBar);

        MainWindow->setCentralWidget(centralWidget);

        retranslateUi(MainWindow);
        QObject::connect(backButton, SIGNAL(clicked()), webView, SLOT(back()));
        QObject::connect(forwardButton, SIGNAL(clicked()), webView, SLOT(forward()));
        QObject::connect(refreshButton, SIGNAL(clicked()), webView, SLOT(reload()));

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "Browser", 0, QApplication::UnicodeUTF8));
        goButton->setText(QApplication::translate("MainWindow", "Go", 0, QApplication::UnicodeUTF8));
        backButton->setText(QString());
        forwardButton->setText(QString());
        refreshButton->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
