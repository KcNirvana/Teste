.class Lcom/miui/share/wechat/WechatShare;
.super Ljava/lang/Object;
.source "WechatShare.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final DEFAULT_THUMB_SIZE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "MiuiShareWechatShare"


# instance fields
.field private mWechatScene:I

.field private mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, p2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/share/wechat/WechatShare;Landroid/content/Intent;Landroid/graphics/Bitmap;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/share/wechat/WechatShare;->shareImageMessage(Landroid/content/Intent;Landroid/graphics/Bitmap;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/share/wechat/WechatShare;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/share/wechat/WechatShare;->shareTextMessage(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/share/wechat/WechatShare;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/miui/share/wechat/WechatShare;->shareMediaMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z

    move-result v0

    return v0
.end method

.method private static getThumbHeight(Landroid/content/Intent;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.miui.share.extra.image_thumb_height"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getThumbWidth(Landroid/content/Intent;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.miui.share.extra.image_thumb_width"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private shareImageMessage(Landroid/content/Intent;Landroid/graphics/Bitmap;Z)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v3, v6

    :goto_0
    return v3

    :cond_1
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXImageObject;

    invoke-direct {v0, p2}, Lcom/tencent/mm/sdk/openapi/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    invoke-static {p1}, Lcom/miui/share/wechat/WechatShare;->getThumbWidth(Landroid/content/Intent;)I

    move-result v7

    invoke-static {p1}, Lcom/miui/share/wechat/WechatShare;->getThumbHeight(Landroid/content/Intent;)I

    move-result v8

    invoke-static {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v4, v5}, Lcom/miui/share/ShareUtils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v7

    iput-object v7, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    new-instance v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    if-eqz p3, :cond_2

    :goto_1
    iput v5, v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    iget-object v5, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v5, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method private shareMediaMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    iput-object p3, v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0, v3}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-object p2, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, p4}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    :cond_2
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    if-eqz p5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput v4, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    iget-object v4, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    move-result v2

    :goto_0
    return v2

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method private shareTextMessage(Ljava/lang/String;Z)Z
    .locals 6

    new-instance v3, Lcom/tencent/mm/sdk/openapi/WXTextObject;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/openapi/WXTextObject;-><init>()V

    iput-object p1, v3, Lcom/tencent/mm/sdk/openapi/WXTextObject;->text:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    iput-object v3, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput v4, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    iget-object v4, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method clean()V
    .locals 1

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->unregisterApp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    :cond_0
    return-void
.end method

.method isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/openapi/BaseResp;)V
    .locals 5

    iget v2, p1, Lcom/tencent/mm/sdk/openapi/BaseResp;->errCode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v1, -0x2

    :goto_0
    const-string/jumbo v2, "MiuiShareWechatShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WechatShare baseResp.errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/tencent/mm/sdk/openapi/BaseResp;->errCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10002

    iget v2, p0, Lcom/miui/share/wechat/WechatShare;->mWechatScene:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v0, 0x10102

    :cond_0
    invoke-static {v0, v1}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    return-void

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setResult(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatShareAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shareIntent(Landroid/app/Activity;Landroid/content/Intent;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Lcom/miui/share/wechat/WechatShare;->mWechatScene:I

    new-instance v0, Lcom/miui/share/wechat/WechatShare$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/share/wechat/WechatShare$1;-><init>(Lcom/miui/share/wechat/WechatShare;Landroid/content/Intent;Z)V

    invoke-static {p1, p2, v0}, Lcom/miui/share/ShareUtils;->shareIntent(Landroid/app/Activity;Landroid/content/Intent;Lcom/miui/share/ShareUtils$OnShareContentPreparedListener;)Z

    move-result v0

    goto :goto_0
.end method
