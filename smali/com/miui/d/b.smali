.class public Lcom/miui/d/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bAZ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/miui/d/d;->bBa(Landroid/content/Context;)Lcom/miui/d/d;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/miui/d/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p1}, Lcom/miui/d/h;-><init>(Lcom/miui/d/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/d/d;->bBe(Lcom/miui/d/g;)V

    return-void
.end method
