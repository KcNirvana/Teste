.class public abstract Lcom/miui/a/b/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/b;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/a/b/b/a;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/a/b/b/c;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract bts()Z
.end method

.method public abstract btt(Z)V
.end method
