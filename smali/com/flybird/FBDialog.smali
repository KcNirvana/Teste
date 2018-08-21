.class public Lcom/flybird/FBDialog;
.super Lcom/flybird/FBView;
.source "FBDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field protected mDialog:Landroid/app/AlertDialog;

.field private mPPLayout:Landroid/widget/LinearLayout;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private needHandleKeyDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iput-object v0, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBDialog;->needHandleKeyDown:Z

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/flybird/FBDialog;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/flybird/FBDialog;->getInnerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showDialog()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/flybird/FBDialog;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBDialog;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flybird/FBDialog;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flybird/FBDialog;->mDoc:Lcom/flybird/FBDocument;

    iget-object v2, v2, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "dialog_linear_layout"

    invoke-static {v2, v3}, Lcom/alipay/birdnest/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/alipay/birdnest/a/i;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030074

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-boolean v0, p0, Lcom/flybird/FBDialog;->needHandleKeyDown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setShowingDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0, v2}, Lcom/flybird/FBDocument;->setShowingDialog(Landroid/app/Dialog;)V

    iput-object v2, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setShowingDialog(Landroid/app/Dialog;)V

    :cond_1
    iput-object v1, p0, Lcom/flybird/FBDialog;->mParentLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/flybird/FBDialog;->mPPLayout:Landroid/widget/LinearLayout;

    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/flybird/FBDialog;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flybird/FBDialog;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/flybird/FBDialog;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "event"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onkeydown"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBDialog;->needHandleKeyDown:Z

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBDialog;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "showModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/flybird/FBDialog;->showDialog()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBView"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBDialog;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
