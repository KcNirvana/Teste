.class Lcom/miui/weather2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/weather2/ActivitySet;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySet;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    iput p2, p0, Lcom/miui/weather2/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/miui/weather2/x;->a:I

    if-ne v0, v2, :cond_2

    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->i(Lcom/miui/weather2/ActivitySet;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v1}, Lcom/miui/weather2/ActivitySet;->d(Lcom/miui/weather2/ActivitySet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, v3}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, v2}, Lcom/miui/weather2/ActivitySet;->a(Lcom/miui/weather2/ActivitySet;I)I

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->l(Lcom/miui/weather2/ActivitySet;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->i(Lcom/miui/weather2/ActivitySet;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v1}, Lcom/miui/weather2/ActivitySet;->c(Lcom/miui/weather2/ActivitySet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, v3}, Lcom/miui/weather2/ActivitySet;->a(Lcom/miui/weather2/ActivitySet;I)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/weather2/x;->a:I

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->j(Lcom/miui/weather2/ActivitySet;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->k(Lcom/miui/weather2/ActivitySet;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v1}, Lcom/miui/weather2/ActivitySet;->j(Lcom/miui/weather2/ActivitySet;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, p2}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/weather2/x;->b:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, p2}, Lcom/miui/weather2/ActivitySet;->b(Lcom/miui/weather2/ActivitySet;I)I

    goto :goto_0
.end method
