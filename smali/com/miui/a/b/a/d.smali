.class public abstract Lcom/miui/a/b/a/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/a/b/a/d;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/a/b/a/c;->getInstance()Lcom/miui/a/b/a/c;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/miui/a/b/a/e;->getInstance()Lcom/miui/a/b/a/e;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/miui/a/b/a/f;->getInstance()Lcom/miui/a/b/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract btr(Landroid/os/IBinder;ILandroid/content/Intent;)Z
.end method
