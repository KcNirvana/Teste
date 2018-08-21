.class public Lcom/miui/personalassistant/ui/widget/EditDialog;
.super Landroid/app/AlertDialog;
.source "EditDialog.java"


# instance fields
.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field public mEditor:Landroid/widget/EditText;

.field private mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/EditDialog;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/widget/EditDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/widget/EditDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->hideSoftInput(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method protected initialize()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x1b040073

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/EditDialog;->setView(Landroid/view/View;)V

    const v1, 0x1b0901ef    # 1.1332999E-22f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/miui/personalassistant/ui/widget/EditDialog$1;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/widget/EditDialog$1;-><init>(Lcom/miui/personalassistant/ui/widget/EditDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/miui/personalassistant/ui/widget/EditDialog$2;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/widget/EditDialog$2;-><init>(Lcom/miui/personalassistant/ui/widget/EditDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mContext:Landroid/content/Context;

    const v3, 0x1b0b01e9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/EditDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v2

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v1}, Lcom/miui/personalassistant/ui/widget/EditDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/personalassistant/ui/widget/EditDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/EditDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mPositiveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/personalassistant/ui/widget/EditDialog$3;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/widget/EditDialog$3;-><init>(Lcom/miui/personalassistant/ui/widget/EditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
