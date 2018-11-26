.class public Lcom/miui/gamebooster/a/D;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/a/D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/a/D;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ie(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/B;->hZ(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/gamebooster/provider/d;->eE(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/gamebooster/a/B;->ib(Landroid/content/ContentResolver;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/B;->hY(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/miui/gamebooster/a/D;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restore gamebooster Data!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/miui/gamebooster/a/D;->if(Landroid/content/Context;I)V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/gamebooster/a/D;->if(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/miui/gamebooster/a/n;->fY(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/gamebooster/a/D;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createSucessful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gamebooster/a/n;->fX(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_2
    invoke-static {p0}, Lcom/miui/gamebooster/provider/d;->eE(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/gamebooster/a/B;->ia(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method private static if(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/a/E;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/a/E;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/a/E;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
