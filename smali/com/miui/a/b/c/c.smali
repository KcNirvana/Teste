.class public abstract Lcom/miui/a/b/c/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/a/b/c/c;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/a/b/c/b;->btw(Landroid/content/Context;)Lcom/miui/a/b/c/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/a/b/c/a;->btu(Landroid/content/Context;)Lcom/miui/a/b/c/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract btv(I)V
.end method
