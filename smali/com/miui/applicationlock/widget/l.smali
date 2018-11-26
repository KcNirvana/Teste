.class final Lcom/miui/applicationlock/widget/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/applicationlock/widget/c;


# instance fields
.field final synthetic adF:Lcom/miui/applicationlock/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ahW(I)V
    .locals 3

    const/4 v2, 0x4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahm(Lcom/miui/applicationlock/widget/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->ahh(Lcom/miui/applicationlock/widget/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f02029b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v1, 0x7f02029a

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahm(Lcom/miui/applicationlock/widget/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->ahh(Lcom/miui/applicationlock/widget/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f02029d

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/l;->adF:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/widget/a;->ahu(Lcom/miui/applicationlock/widget/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const v1, 0x7f02029c

    goto :goto_2
.end method
