.class final Lcom/miui/permcenter/install/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    const-string/jumbo v0, "XiaomiAccountUtils"

    const-string/jumbo v1, "login done"

    invoke-static {v0, v1}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
