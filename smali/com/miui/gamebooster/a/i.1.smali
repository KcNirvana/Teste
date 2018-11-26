.class public Lcom/miui/gamebooster/a/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fB(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "com.miui.cleanmaster"

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fC(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
