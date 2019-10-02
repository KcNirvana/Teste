.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
.super Ljava/lang/Object;
.source "NotificationWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private externalParams:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

.field private notificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaomi/passport/uicontroller/NotificationWebView;
    .locals 10

    new-instance v9, Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->externalParams:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v2, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->notificationUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->externalParams:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-boolean v3, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->needRemoveAllCookies:Z

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->externalParams:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v4, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->externalParams:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v5, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->passToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->externalParams:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v6, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->cookies:Ljava/util/Map;

    iget-object v7, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->notificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;Lcom/xiaomi/passport/uicontroller/NotificationWebView$1;)V

    return-object v9
.end method

.method public setContext(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setExternalParams(Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->externalParams:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    return-object p0
.end method

.method public setNotificationEndListener(Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->notificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    return-object p0
.end method
