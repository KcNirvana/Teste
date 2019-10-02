.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
.super Ljava/lang/Object;
.source "NotificationWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalParams"
.end annotation


# instance fields
.field public cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final needRemoveAllCookies:Z

.field public final notificationUrl:Ljava/lang/String;

.field public final passToken:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->notificationUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->needRemoveAllCookies:Z

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->passToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setCookies(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->cookies:Ljava/util/Map;

    return-void
.end method
