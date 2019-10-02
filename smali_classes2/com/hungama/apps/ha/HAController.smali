.class public final Lcom/hungama/apps/ha/HAController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/hungama/apps/ha/HAController;


# instance fields
.field private b:Lcom/hungama/apps/ha/b/c;

.field private c:Lcom/hungama/apps/ha/events/a;

.field private d:Lcom/hungama/apps/ha/AppLifeCycleHandler;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/hungama/apps/ha/a/b;->a(Landroid/content/Context;)V

    new-instance v6, Lcom/hungama/apps/ha/b/c;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/hungama/apps/ha/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    new-instance p2, Lcom/hungama/apps/ha/events/a;

    invoke-direct {p2, p1, p5}, Lcom/hungama/apps/ha/events/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hungama/apps/ha/HAController;->c:Lcom/hungama/apps/ha/events/a;

    new-instance p2, Lcom/hungama/apps/ha/AppLifeCycleHandler;

    invoke-direct {p2}, Lcom/hungama/apps/ha/AppLifeCycleHandler;-><init>()V

    iput-object p2, p0, Lcom/hungama/apps/ha/HAController;->d:Lcom/hungama/apps/ha/AppLifeCycleHandler;

    invoke-static {p1}, Lcom/hungama/apps/ha/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hungama/apps/ha/HAController;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hungama/apps/ha/HAController;->e:Z

    iget-boolean p1, p0, Lcom/hungama/apps/ha/HAController;->e:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/hungama/apps/ha/HAController;->f:Z

    iget-object p1, p0, Lcom/hungama/apps/ha/HAController;->c:Lcom/hungama/apps/ha/events/a;

    iget-object p4, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {p4}, Lcom/hungama/apps/ha/b/c;->a()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {p4}, Lcom/hungama/apps/ha/b/c;->d()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/hungama/apps/ha/events/a;->a(Z)V

    iget-object p1, p0, Lcom/hungama/apps/ha/HAController;->c:Lcom/hungama/apps/ha/events/a;

    iget-object p2, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hungama/apps/ha/events/a;->b(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/hungama/apps/ha/HAController;->e:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    iget-object p2, p0, Lcom/hungama/apps/ha/HAController;->c:Lcom/hungama/apps/ha/events/a;

    invoke-virtual {p1, p2}, Lcom/hungama/apps/ha/b/c;->a(Lcom/hungama/apps/ha/b/f;)V

    iget-object p1, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {p1}, Lcom/hungama/apps/ha/b/c;->b()V

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getInstance()Lcom/hungama/apps/ha/HAController;
    .locals 1

    sget-object v0, Lcom/hungama/apps/ha/HAController;->a:Lcom/hungama/apps/ha/HAController;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/hungama/apps/ha/HAController;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    sget-object v0, Lcom/hungama/apps/ha/HAController;->a:Lcom/hungama/apps/ha/HAController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/apps/ha/HAController;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hungama/apps/ha/HAController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/hungama/apps/ha/HAController;->a:Lcom/hungama/apps/ha/HAController;

    sget-object p0, Lcom/hungama/apps/ha/HAController;->a:Lcom/hungama/apps/ha/HAController;

    const-string p1, "APP_LAUNCHED"

    invoke-virtual {p0, p1}, Lcom/hungama/apps/ha/HAController;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hungama/apps/ha/HAController;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hungama/apps/ha/HAController;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/apps/ha/events/b;

    iget-object v1, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hungama/apps/ha/events/b;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/hungama/apps/ha/HAController;->c:Lcom/hungama/apps/ha/events/a;

    new-instance v2, Lcom/hungama/apps/ha/events/Event;

    invoke-direct {v2, p1}, Lcom/hungama/apps/ha/events/Event;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/hungama/apps/ha/events/a;->a(Lcom/hungama/apps/ha/events/Event;Lcom/hungama/apps/ha/events/b;)V

    :cond_0
    return-void
.end method

.method public getLifeCycleHandler()Lcom/hungama/apps/ha/AppLifeCycleHandler;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/HAController;->d:Lcom/hungama/apps/ha/AppLifeCycleHandler;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method public log(Lcom/hungama/apps/ha/events/Event;)V
    .locals 2

    iget-boolean v0, p0, Lcom/hungama/apps/ha/HAController;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hungama/apps/ha/events/Event;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/hungama/apps/ha/events/b;

    iget-object v1, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hungama/apps/ha/events/b;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/hungama/apps/ha/HAController;->c:Lcom/hungama/apps/ha/events/a;

    invoke-virtual {v1, p1, v0}, Lcom/hungama/apps/ha/events/a;->a(Lcom/hungama/apps/ha/events/Event;Lcom/hungama/apps/ha/events/b;)V

    :cond_1
    return-void
.end method

.method public onReceiveFCMToken(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/hungama/apps/ha/HAController;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/b/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateAffiliateId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/b/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onUserLoggedIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hungama/apps/ha/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hungama/apps/ha/events/Event;

    const-string v1, "USER_LOGGED_IN"

    invoke-direct {v0, v1}, Lcom/hungama/apps/ha/events/Event;-><init>(Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/hungama/apps/ha/events/Event;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/events/Event;

    const-string p1, "uname"

    invoke-virtual {v0, p1, p2}, Lcom/hungama/apps/ha/events/Event;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/events/Event;

    const-string p1, "utype"

    invoke-virtual {v0, p1, p3}, Lcom/hungama/apps/ha/events/Event;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/events/Event;

    invoke-virtual {p0, v0}, Lcom/hungama/apps/ha/HAController;->log(Lcom/hungama/apps/ha/events/Event;)V

    :cond_0
    return-void
.end method

.method public onUserLoggedOut()V
    .locals 4

    iget-object v0, p0, Lcom/hungama/apps/ha/HAController;->b:Lcom/hungama/apps/ha/b/c;

    const-string v1, "HA-1234"

    const-string v2, "HA-GUEST"

    const-string v3, "HA-AUTO"

    invoke-virtual {v0, v1, v2, v3}, Lcom/hungama/apps/ha/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/hungama/apps/ha/events/Event;

    const-string v1, "USER_LOGGED_OUT"

    invoke-direct {v0, v1}, Lcom/hungama/apps/ha/events/Event;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hungama/apps/ha/HAController;->log(Lcom/hungama/apps/ha/events/Event;)V

    return-void
.end method
