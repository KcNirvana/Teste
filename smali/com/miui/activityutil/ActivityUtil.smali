.class public Lcom/miui/activityutil/ActivityUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delayedUpload(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p0}, Lcom/miui/activityutil/w;->a(Landroid/content/Context;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/activityutil/w;->a(J)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/activityutil/w;->a(Landroid/content/Context;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/activityutil/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setAllowNetworking(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/miui/activityutil/w;->a(Landroid/content/Context;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/activityutil/w;->a(Z)V

    return-void
.end method
