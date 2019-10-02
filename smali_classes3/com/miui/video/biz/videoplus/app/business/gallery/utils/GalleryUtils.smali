.class public Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field public static final ALIAS_SCREEN_RECORD:Ljava/lang/String; = "\u5f55\u5c4f"

.field public static final ALL_FOLDER:I = 0x0

.field public static final FAKE_FOLDER_ALL_VIDEO:Ljava/lang/String; = "FAKE_FOLDER_ALL_VIDEO"

.field public static final FLAG_COMMON_DIVIDER:I = 0x2

.field public static final FLAG_DATUM_MAIN_TITLE:I = 0x1

.field public static final FOLDER_CAMERA:Ljava/lang/String; = "/DCIM/Camera"

.field public static final FOLDER_DOWNLOAD:Ljava/lang/String; = "/Download"

.field public static final FOLDER_FACEBOOK:Ljava/lang/String; = "/Pictures/Facebook"

.field public static final FOLDER_GALLERY_CLOUD:Ljava/lang/String; = "/MIUI/Gallery/cloud/owner"

.field public static final FOLDER_INSTAGRAM:Ljava/lang/String; = "/Movies/Instagram"

.field public static final FOLDER_MOBILEQQ:Ljava/lang/String; = "/Tencent/MobileQQ/photo"

.field public static final FOLDER_MOBILEQQ1:Ljava/lang/String; = "/tencent/MobileQQ/photo"

.field public static final FOLDER_MOBILEQQ_FILE:Ljava/lang/String; = "/Tencent/QQfile_recv"

.field public static final FOLDER_MOBILEQQ_FILE1:Ljava/lang/String; = "/tencent/QQfile_recv"

.field private static final FOLDER_PEX:Ljava/lang/String; = ""

.field public static final FOLDER_PICTURES:Ljava/lang/String; = "/Pictures/\u9501\u5c4f\u58c1\u7eb8"

.field public static final FOLDER_QQ:Ljava/lang/String; = "/Tencent/QQ_Images"

.field public static final FOLDER_QQ1:Ljava/lang/String; = "/tencent/QQ_Images"

.field public static final FOLDER_SCREEN_RECORDER:Ljava/lang/String; = "/DCIM/ScreenRecorder"

.field public static final FOLDER_SCREEN_SHOTS:Ljava/lang/String; = "/DCIM/Screenshots"

.field public static final FOLDER_SDCARD:Ljava/lang/String; = "/storage/emulated/0"

.field public static final FOLDER_SINA:Ljava/lang/String; = "/sina/weibo/weibo"

.field public static final FOLDER_TAOBAO:Ljava/lang/String; = "/Pictures/taobao"

.field public static final FOLDER_TOUTIAO:Ljava/lang/String; = "/news_article"

.field public static final FOLDER_TYPE_COMMON:I = 0x0

.field public static final FOLDER_TYPE_HIDDEN:I = 0x1

.field public static final FOLDER_WECHAT:Ljava/lang/String; = "/Tencent/MicroMsg/WeiXin"

.field public static final FOLDER_WECHAT1:Ljava/lang/String; = "/tencent/MicroMsg/WeiXin"

.field public static final FOLDER_WECHAT2:Ljava/lang/String; = "/tencent/MicroMsg/WeChat"

.field public static final FOLDER_WHATSAPP:Ljava/lang/String; = "/WhatsApp/Media/WhatsApp Video"

.field public static final FOLDER_WHATSAPP1:Ljava/lang/String; = "/whats-App/Media/WhatsApp Video"

.field private static final GALLERY_FIRST_FOLDERS:[[Ljava/lang/String;

.field private static final GALLERY_SECOND_FOLDERS:[[Ljava/lang/String;

.field public static final LONG_VIDEO_DURATION:I = 0x927c0

.field public static final PURE_FOLDER_SCREEN_RECORDER:Ljava/lang/String; = "ScreenRecorder"

.field public static final PURE_FOLDER_SCREEN_SHOTS:Ljava/lang/String; = "Screenshots"

.field public static final SPAN_COUNT:I = 0xc

.field public static final SPAN_SIZE_FOUR:I = 0xc

.field public static final SPAN_SIZE_ONE:I = 0x3

.field public static final SPAN_SIZE_THREE:I = 0x9

.field public static final SPAN_SIZE_THREEOFFOUR:I = 0x4

.field public static final SPAN_SIZE_TWO:I = 0x6

.field public static final STANDARD_LONG_IMAGE_H_W:F = 2.5f

.field public static final STANDARD_PANORAMIC_W_H:F = 3.2f

.field private static final TAG:Ljava/lang/String; = "GalleryUtils"

.field private static final VIDEO_FIRST_FOLDERS:[[Ljava/lang/String;

.field public static final VIDEO_FOLDER:I = 0x1

.field public static final VIDEO_FOLDER_MIVIDEO:Ljava/lang/String; = "/mivideo/images"

.field public static final VIDEO_FOLDER_PDD:Ljava/lang/String; = "/Android/data/com.xunmeng.pinduoduo/files/Pictures/pddPhotos"

.field public static final VIDEO_FOLDER_QQEDITPIC:Ljava/lang/String; = "/Tencent/QQ_Images/QQEditPic"

.field public static final VIDEO_FOLDER_QTT:Ljava/lang/String; = "/qk"

.field public static final VIDEO_FOLDER_TENCENT_VIDEO:Ljava/lang/String; = "/tencent/TencentVideo/CutPic/cut"

.field public static final VIDEO_FOLDER_TOUTIAO:Ljava/lang/String; = "/news_article"

.field public static final VIDEO_FOLDER_YOUKU_VIDEO:Ljava/lang/String; = "/youku/YoukuScreenShot"

.field private static final VIDEO_SECOND_FOLDERS:[[Ljava/lang/String;

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "/DCIM/Camera"

    const-string v3, "\u62cd\u6444"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/DCIM/Screenshots"

    const-string v4, "\u622a\u56fe"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->GALLERY_FIRST_FOLDERS:[[Ljava/lang/String;

    const/16 v1, 0xd

    new-array v2, v1, [[Ljava/lang/String;

    const-string v5, "/DCIM/ScreenRecorder"

    const-string v6, "\u5f55\u5c4f"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "/Tencent/MicroMsg/WeiXin"

    const-string v6, "\u5fae\u4fe1"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "/tencent/MicroMsg/WeiXin"

    const-string v6, "\u5fae\u4fe1"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v5, "/tencent/MicroMsg/WeChat"

    const-string v6, "\u5fae\u4fe1"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const-string v5, "/sina/weibo/weibo"

    const-string v7, "\u65b0\u6d6a"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v2, v7

    const-string v5, "/Pictures/taobao"

    const-string v8, "\u6dd8\u5b9d"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    aput-object v5, v2, v8

    const-string v5, "/Tencent/QQ_Images"

    const-string v9, "QQ"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    aput-object v5, v2, v9

    const-string v5, "/Tencent/MobileQQ/photo"

    const-string v10, "QQ\u62cd\u6444"

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x7

    aput-object v5, v2, v10

    const-string v5, "/Tencent/QQfile_recv"

    const-string v11, "QQ\u63a5\u6536\u7684\u6587\u4ef6"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x8

    aput-object v5, v2, v11

    const-string v5, "/news_article"

    const-string v12, "\u4eca\u65e5\u5934\u6761"

    filled-new-array {v5, v12}, [Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x9

    aput-object v5, v2, v12

    const-string v5, "/Download"

    const-string v13, "\u4e0b\u8f7d"

    filled-new-array {v5, v13}, [Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0xa

    aput-object v5, v2, v13

    const-string v5, "/Pictures/\u9501\u5c4f\u58c1\u7eb8"

    const-string v14, "\u9501\u5c4f\u58c1\u7eb8"

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0xb

    aput-object v5, v2, v14

    const-string v5, "/MIUI/Gallery/cloud/owner"

    const-string v15, "\u56fe\u5e93"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xc

    aput-object v5, v2, v15

    sput-object v2, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->GALLERY_SECOND_FOLDERS:[[Ljava/lang/String;

    new-array v2, v10, [[Ljava/lang/String;

    const-string v5, "/DCIM/Camera"

    const-string v15, "\u62cd\u6444"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "/Download"

    const-string v15, "\u4e0b\u8f7d"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "/DCIM/ScreenRecorder"

    const-string v15, "\u5f55\u5c4f"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v5, "/WhatsApp/Media/WhatsApp Video"

    const-string v15, "WhatsApp"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    const-string v5, "/whats-App/Media/WhatsApp Video"

    const-string v15, "WhatsApp"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const-string v5, "/Pictures/Facebook"

    const-string v15, "Facebook"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    const-string v5, "/Movies/Instagram"

    const-string v15, "Instagram"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    sput-object v2, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->VIDEO_FIRST_FOLDERS:[[Ljava/lang/String;

    new-array v1, v1, [[Ljava/lang/String;

    const-string v2, "/sina/weibo/weibo"

    const-string v5, "\u65b0\u6d6a"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "/Pictures/taobao"

    const-string v3, "\u6dd8\u5b9d"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "/storage/emulated/0"

    const-string v3, "Sdcard"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "/Tencent/QQ_Images"

    const-string v2, "QQ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "/Tencent/MobileQQ/photo"

    const-string v2, "QQ\u62cd\u6444"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "/Tencent/QQfile_recv"

    const-string v2, "QQ\u63a5\u6536\u7684\u6587\u4ef6"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v0, "/news_article"

    const-string v2, "\u4eca\u65e5\u5934\u6761"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "/Tencent/QQ_Images/QQEditPic"

    const-string v2, "QQ\u7f16\u8f91"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const-string v0, "/mivideo/images"

    const-string v2, "\u5c0f\u7c73\u89c6\u9891"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const-string v0, "/tencent/TencentVideo/CutPic/cut"

    const-string v2, "\u817e\u8baf\u89c6\u9891"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v12

    const-string v0, "/youku/YoukuScreenShot"

    const-string v2, "\u4f18\u9177\u89c6\u9891"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    const-string v0, "/Android/data/com.xunmeng.pinduoduo/files/Pictures/pddPhotos"

    const-string v2, "\u62fc\u591a\u591a"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v0, "/qk"

    const-string v2, "\u8da3\u5934\u6761"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->VIDEO_SECOND_FOLDERS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLastDivider(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createItemDivider(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private static addToFirstGalleryEntity(Ljava/util/Map;Ljava/util/List;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->mapPath2Alias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static addToSecondGalleryEntity(Ljava/util/Map;Ljava/util/List;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    const-string v3, "/MIUI/Gallery/cloud/owner"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p2, v4

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->mapPath2Alias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static createGalleryEntity(Ljava/util/List;I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;>;I)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    if-eqz v11, :cond_0

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/miui/video/framework/utils/FileUtils;->getCurrentDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const-string v14, "/DCIM/ScreenRecorder"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/video/framework/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setFileName(Ljava/lang/String;)V

    :cond_2
    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isHidded()Z

    move-result v13

    if-nez v13, :cond_e

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/miui/video/framework/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "gif"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isImage()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const-string v14, "/DCIM/Camera"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    const v14, 0x404ccccd    # 3.2f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isImage()Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v13

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v14

    if-ne v13, v14, :cond_5

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isImage()Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, 0x40200000    # 2.5f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isVideo()Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDuration()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_7

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getIsParsed()Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object v13

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual {v13}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getDuration()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setDuration(J)V

    goto :goto_1

    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_1
    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "/DCIM/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDuration()J

    move-result-wide v3

    const-wide/32 v13, 0x927c0

    cmp-long v3, v3, v13

    if-ltz v3, :cond_c

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getRotation()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getRotation()I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_9

    :cond_8
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v3

    iget-object v4, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_9

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getRotation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_a

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getRotation()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_c

    :cond_a
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v3

    iget-object v4, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_c

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :cond_c
    :goto_2
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "/DCIM/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isFastSlowVideo()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isSupportAiMusic()Z

    goto :goto_3

    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_3
    invoke-static {v12}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_10
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isHidded()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v4

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    goto :goto_4

    :cond_12
    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v12}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setFolder(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setLayoutType(I)V

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createPurFolder(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->saveCreateTime(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    :goto_4
    invoke-interface {v9, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_0

    :cond_14
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static {v9, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->sortFolders(Ljava/util/Map;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_15

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_title_mediatype:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeTitle(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_video_title_mediatype:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeTitle(Ljava/util/List;Ljava/lang/String;)V

    :goto_5
    invoke-static {v1, v4, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeGifEntities(Ljava/util/List;Ljava/util/List;I)V

    invoke-static {v2, v4, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypePanoramicEntities(Ljava/util/List;Ljava/util/List;I)V

    move-object/from16 v1, v17

    invoke-static {v1, v4, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeSquareEntities(Ljava/util/List;Ljava/util/List;I)V

    move-object/from16 v1, v18

    invoke-static {v1, v4, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeRectangleEntities(Ljava/util/List;Ljava/util/List;I)V

    invoke-static {v5, v4, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeFastSlowVideoEntities(Ljava/util/List;Ljava/util/List;I)V

    invoke-static {v6, v4, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeAiMusicVideoEntities(Ljava/util/List;Ljava/util/List;I)V

    invoke-static {v7, v4, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeLongVideoEntities(Ljava/util/List;Ljava/util/List;I)V

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->addLastDivider(Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_16

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_17

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_title_othergallery:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeTitle(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_video_title_othergallery:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeTitle(Ljava/util/List;Ljava/lang/String;)V

    :goto_6
    invoke-static {v8, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeHiddedEntities(Ljava/util/List;Ljava/util/List;I)V

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->addLastDivider(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_18

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    return-object v3
.end method

.method private static createItemDivider(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setLayoutType(I)V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setShowValue(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createMainTitle(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;I)V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_mine_gallery:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setTitle(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_mine_videos:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setTitle(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setShowValue(I)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setLayoutType(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FAKE_FOLDER_ALL_VIDEO"

    invoke-static {p1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static createMediaTypeAiMusicVideoEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_aimusic:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_aimusic_video:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypeFastSlowVideoEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_fastslowvideo:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_fastslow_video:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypeGifEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_gif:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_gif:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypeHiddedEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_hidded:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_hide:I

    const/4 v1, 0x1

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setBaseId(J)V

    invoke-virtual {v0, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setFolderType(I)V

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setLayoutType(I)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setTitle(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    invoke-static {p3, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createItemDivider(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private static createMediaTypeLongVideoEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_longvideo:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_long_video:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypePanoramicEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_quanjing:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_panoramic:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypeRectangleEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_changtu:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_recatangle:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypeSquareEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_mediatype_fangtu:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_square:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMediaTypeItemEntity(Ljava/lang/String;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private static createMediaTypeTitle(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setTitle(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setLayoutType(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createItemDivider(Ljava/util/List;I)V

    return-void
.end method

.method private static createPurFolder(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setPurFolder(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    return-void
.end method

.method public static getAllGalleryList()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->loadAllByDayAndFolder()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getGalleryList(Ljava/util/List;I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    move-result-object v0

    return-object v0
.end method

.method private static getFolderCreateTime(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)J
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "date_added"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :cond_3
    :goto_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getFolderGalleryList(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->queryAllByDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    new-instance v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-direct {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;-><init>()V

    invoke-virtual {v4, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->createInstance(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v4, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setFolder(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setLayoutType(I)V

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    return-object v0
.end method

.method private static getGalleryList(Ljava/util/List;I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;I)",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;-><init>()V

    invoke-static {p0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;-><init>()V

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->createInstance(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createGalleryEntity(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->setList(Ljava/util/List;)V

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->createMainTitle(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;I)V

    return-object v0
.end method

.method public static getVideoGalleryList()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->loadVideoByDayAndFolder()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->list:Ljava/util/List;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->list:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getGalleryList(Ljava/util/List;I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoGalleryList2()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;
    .locals 2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->list:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getGalleryList(Ljava/util/List;I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    move-result-object v0

    return-object v0
.end method

.method private static mapPath2Alias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "/tencent/TencentVideo/CutPic/cut"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "/news_article"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "/Pictures/taobao"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "/youku/YoukuScreenShot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "/Tencent/MicroMsg/WeiXin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "/storage/emulated/0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "/sina/weibo/weibo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "/Tencent/QQ_Images"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "/Tencent/QQ_Images/QQEditPic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "/qk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto :goto_1

    :sswitch_a
    const-string v1, "/Android/data/com.xunmeng.pinduoduo/files/Pictures/pddPhotos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_1

    :sswitch_b
    const-string v1, "/DCIM/Camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_c
    const-string v1, "/tencent/MicroMsg/WeiXin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_d
    const-string v1, "/tencent/MicroMsg/WeChat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_e
    const-string v1, "/Tencent/MobileQQ/photo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_f
    const-string v1, "/Download"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_10
    const-string v1, "/Tencent/QQfile_recv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_11
    const-string v1, "/mivideo/images"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto :goto_1

    :sswitch_12
    const-string v1, "/DCIM/ScreenRecorder"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_qtt:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_pdd:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_youku_video:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_tencent_video:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_mivideo:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_5
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_qqeditpic:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_toutiao:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_mobileqq_file:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_8
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_mobileqq:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_9
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_qq:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_a
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_TAOBAO:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_b
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_sina:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_c
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_wechat:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_d
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_screen_recorder:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_e
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_download:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_f
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->storage_internal_sdcard:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_10
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_camera:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbe8579 -> :sswitch_12
        -0x7de99be9 -> :sswitch_11
        -0x746fc7d0 -> :sswitch_10
        -0x6e7a7229 -> :sswitch_f
        -0x6a59a4a2 -> :sswitch_e
        -0x66c43061 -> :sswitch_d
        -0x66b32565 -> :sswitch_c
        -0x6608d69e -> :sswitch_b
        -0x57ace088 -> :sswitch_a
        0xbe89 -> :sswitch_9
        0x24e56eef -> :sswitch_8
        0x2757a6de -> :sswitch_7
        0x4795c8aa -> :sswitch_6
        0x52d13df5 -> :sswitch_5
        0x5319b27b -> :sswitch_4
        0x55529efa -> :sswitch_3
        0x5b9dfd19 -> :sswitch_2
        0x6067ad39 -> :sswitch_1
        0x69ea403b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static saveCreateTime(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setCreateTime(J)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getFolderCreateTime(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)J

    move-result-wide v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setCreateTime(J)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    :goto_0
    return-void
.end method

.method private static sortFolders(Ljava/util/Map;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->GALLERY_FIRST_FOLDERS:[[Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-static {p0, v0, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->addToFirstGalleryEntity(Ljava/util/Map;Ljava/util/List;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->GALLERY_SECOND_FOLDERS:[[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-static {p0, p1, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->addToSecondGalleryEntity(Ljava/util/Map;Ljava/util/List;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$1;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$1;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "GalleryUtils"

    const-string v1, "sortFolders: "

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    invoke-static {p0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->addList(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_allvideos:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    const-string v2, "FAKE_FOLDER_ALL_VIDEO"

    invoke-virtual {p1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setFolder(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$2;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$2;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setLayoutType(I)V

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->VIDEO_FIRST_FOLDERS:[[Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v4, p1, v3

    invoke-static {p0, v0, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->addToFirstGalleryEntity(Ljava/util/Map;Ljava/util/List;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->VIDEO_SECOND_FOLDERS:[[Ljava/lang/String;

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    invoke-static {p0, p1, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->addToSecondGalleryEntity(Ljava/util/Map;Ljava/util/List;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$3;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$3;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_5
    invoke-static {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->sortOtherFolderEntityList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static sortOtherFolderEntityList(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$4;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$4;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
