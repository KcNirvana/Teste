.class public abstract Lcom/miui/a/b/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/a/b/a/a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/a/b/a/b;->getInstance()Lcom/miui/a/b/a/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/a/b/a/g;->getInstance()Lcom/miui/a/b/a/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract btq(Ljava/util/List;)Ljava/lang/String;
.end method
