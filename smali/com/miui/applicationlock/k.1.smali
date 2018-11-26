.class Lcom/miui/applicationlock/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/applicationlock/utils/i;


# instance fields
.field private final ahA:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/k;->ahA:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/k;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void
.end method


# virtual methods
.method public aeM(I)V
    .locals 9

    const v8, 0x7f0707cd

    const/4 v7, 0x0

    const/4 v6, 0x4

    iget-object v0, p0, Lcom/miui/applicationlock/k;->ahA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anR(Lcom/miui/applicationlock/ConfirmAccessControl;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anu(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/applicationlock/utils/m;->agh(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, v7}, Lcom/miui/applicationlock/ConfirmAccessControl;->anS(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amT(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/a;->adK()V

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ano(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/n;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ano(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/n;->dismiss()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anF(Lcom/miui/applicationlock/ConfirmAccessControl;I)I

    invoke-static {v0, v6, v7, v6}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoh(Lcom/miui/applicationlock/ConfirmAccessControl;III)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amL(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anj(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amW(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amY(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAuthenticationFailed()V
    .locals 10

    const/4 v9, 0x5

    const v8, 0x7f0707e1

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/k;->ahA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anR(Lcom/miui/applicationlock/ConfirmAccessControl;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agk(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amS(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->anE(Lcom/miui/applicationlock/ConfirmAccessControl;I)I

    move-result v4

    if-ge v4, v9, :cond_4

    if-ge v1, v9, :cond_4

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amJ(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amQ(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amQ(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amQ(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/m;->agl(Landroid/view/View;)V

    :goto_0
    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amL(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afD(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/m;->agl(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->anM(Lcom/miui/applicationlock/ConfirmAccessControl;I)I

    invoke-static {v0, v3, v2, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoh(Lcom/miui/applicationlock/ConfirmAccessControl;III)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x7f0707cc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amL(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->aof(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ana(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x7f0707ce

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amT(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/a;->adK()V

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ano(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/n;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ano(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/n;->dismiss()V

    :cond_5
    iget-boolean v1, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->anT(Lcom/miui/applicationlock/ConfirmAccessControl;ZIIII)V

    goto :goto_1
.end method
