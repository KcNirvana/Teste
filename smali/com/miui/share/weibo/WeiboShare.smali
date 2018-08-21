.class Lcom/miui/share/weibo/WeiboShare;
.super Ljava/lang/Object;
.source "WeiboShare.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiShare"


# instance fields
.field private mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/share/weibo/WeiboShare;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShare;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    return-void
.end method

.method private getImageObject(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    iput-object p1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShare;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    move-result v0

    return v0
.end method

.method share(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    new-instance v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/share/weibo/WeiboShare;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/share/weibo/WeiboShare;->getImageObject(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    :cond_1
    new-instance v0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v2, p0, Lcom/miui/share/weibo/WeiboShare;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v2, p1, v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    move-result v2

    return v2
.end method
