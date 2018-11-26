.class public Lcom/miui/gamebooster/a/q;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gh(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static gi(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static gj(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/miui/gamebooster/a/q;->gh(Landroid/content/Context;)I

    move-result v0

    const-string/jumbo v1, "gb_function_user_auto_bright"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, v2}, Lcom/miui/gamebooster/a/q;->gi(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/miui/gamebooster/a/q;->gh(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gb_function_user_auto_bright"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/gamebooster/a/q;->gi(Landroid/content/Context;I)V

    goto :goto_0
.end method
