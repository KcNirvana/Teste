.class public Landroid/support/a/a/y;
.super Landroid/support/v4/e/a;
.source "SourceFile"


# instance fields
.field final b:Landroid/support/a/a/r;

.field final c:Landroid/support/v4/e/a;


# direct methods
.method public constructor <init>(Landroid/support/a/a/r;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/e/a;-><init>()V

    new-instance v0, Landroid/support/a/a/z;

    invoke-direct {v0, p0}, Landroid/support/a/a/z;-><init>(Landroid/support/a/a/y;)V

    iput-object v0, p0, Landroid/support/a/a/y;->c:Landroid/support/v4/e/a;

    iput-object p1, p0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    return-void
.end method

.method static synthetic a(Landroid/support/a/a/y;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/a/a/y;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->q()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/e/a/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/e/a;->a(Landroid/view/View;Landroid/support/v4/e/a/c;)V

    const-class v0, Landroid/support/a/a/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/e/a/c;->a(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/a/a/y;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/a/a/r$i;->a(Landroid/support/v4/e/a/c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/e/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/support/a/a/y;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/a/a/r$i;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/support/v4/e/a;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/y;->c:Landroid/support/v4/e/a;

    return-object v0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/e/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/a/a/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/a/a/y;->c()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/support/a/a/r;

    invoke-virtual {p1}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/a/a/r$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
