#include "mobilewebpage.h"

#include <QVariant>

#define TILE_CREATION_DELAY 20
#define TILE_SIZE QSize(256, 256)
#define TILE_AREA_RANGE QSizeF(4.0, 4.0)


MobileWebPage::MobileWebPage(QObject *parent)
    : QWebPage(parent)
{
    // setup tile settings
    setProperty("_q_TiledBackingStoreTileSize", TILE_SIZE);
    setProperty("_q_TiledBackingStoreKeepAreaMultiplier", TILE_AREA_RANGE);
    setProperty("_q_TiledBackingStoreCoverAreaMultiplier", TILE_AREA_RANGE);
    setProperty("_q_TiledBackingStoreTileCreationDelay", TILE_CREATION_DELAY);

    settings()->setDefaultTextEncoding("utf-8");
}

MobileWebPage::~MobileWebPage()
{

}

QString MobileWebPage::userAgentForUrl(const QUrl &url) const
{
#if defined(Q_OS_LINUX)
    // simulate android, since there is no user agent for this browser
    return QWebPage::userAgentForUrl(url)
        .replace("Linux", "Linux, like Android");
#else
    // simulate nokia n8, FIXME: we dont need this on real phone
    return QWebPage::userAgentForUrl(url).replace("Unknown; U; Windows NT 6.1; en-US", "Symbian/3; Series60/5.2 NokiaN8-00/011.012; Profile/MIDP-2.1 Configuration/CLDC-1.1");
#endif
}

