.class Lcom/miui/weather2/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmiui/widget/SlidingButton;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/weather2/model/a;


# direct methods
.method constructor <init>(Lcom/miui/weather2/model/a;Lmiui/widget/SlidingButton;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/b;->c:Lcom/miui/weather2/model/a;

    iput-object p2, p0, Lcom/miui/weather2/model/b;->a:Lmiui/widget/SlidingButton;

    iput-object p3, p0, Lcom/miui/weather2/model/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/weather2/model/b;->c:Lcom/miui/weather2/model/a;

    invoke-static {v2}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/weather2/model/b;->a:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/weather2/model/b;->a:Lmiui/widget/SlidingButton;

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/weather2/model/b;->c:Lcom/miui/weather2/model/a;

    iget-object v2, p0, Lcom/miui/weather2/model/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/b;->a:Lmiui/widget/SlidingButton;

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/weather2/model/b;->a:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/model/b;->c:Lcom/miui/weather2/model/a;

    invoke-static {v0, v1}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/weather2/model/b;->c:Lcom/miui/weather2/model/a;

    invoke-static {v1}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090045

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
