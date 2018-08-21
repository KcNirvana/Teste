.class final Lcom/ali/user/mobile/f/b;
.super Ljava/lang/Object;
.source "ConfigResolver.java"

# interfaces
.implements Lcom/ali/user/mobile/f/c;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/f/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/f/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getConfigService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
