.class public Lcom/miui/personalassistant/ui/widget/DetachClickListener;
.super Ljava/lang/Object;
.source "DetachClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

.field private mClickDelegate:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mClickDelegate:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/ui/widget/DetachClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mClickDelegate:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/ui/widget/DetachClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method public static wrap(Landroid/content/DialogInterface$OnCancelListener;)Lcom/miui/personalassistant/ui/widget/DetachClickListener;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public static wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/personalassistant/ui/widget/DetachClickListener;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public clearOnDetach(Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/ui/widget/DetachClickListener$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/widget/DetachClickListener$1;-><init>(Lcom/miui/personalassistant/ui/widget/DetachClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mClickDelegate:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->mClickDelegate:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
