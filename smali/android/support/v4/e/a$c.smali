.class Landroid/support/v4/e/a$c;
.super Landroid/support/v4/e/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/e/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/e/a/h;
    .locals 2

    invoke-static {p1, p2}, Landroid/support/v4/e/f;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/e/a/h;

    invoke-direct {v0, v1}, Landroid/support/v4/e/a/h;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/e/a;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/e/c;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/e/c;-><init>(Landroid/support/v4/e/a$c;Landroid/support/v4/e/a;)V

    invoke-static {v0}, Landroid/support/v4/e/f;->a(Landroid/support/v4/e/f$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/e/f;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
