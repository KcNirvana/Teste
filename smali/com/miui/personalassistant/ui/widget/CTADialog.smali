.class public Lcom/miui/personalassistant/ui/widget/CTADialog;
.super Ljava/lang/Object;
.source "CTADialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;,
        Lcom/miui/personalassistant/ui/widget/CTADialog$NoUnderlineSpan;
    }
.end annotation


# static fields
.field private static final URL_PRIVACY:Ljava/lang/String; = "http://www.miui.com/res/doc/privacy/cn.html"

.field private static final URL_PROTOCOL:Ljava/lang/String; = "http://www.miui.com/res/doc/eula/cn.html"

.field private static sDialog:Lmiui/app/AlertDialog;


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mListener:Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/widget/CTADialog;)Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mListener:Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/widget/CTADialog;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static dismiss()V
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/ui/widget/CTADialog;->sDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/personalassistant/ui/widget/CTADialog;->sDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/personalassistant/ui/widget/CTADialog;->sDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/personalassistant/ui/widget/CTADialog;->sDialog:Lmiui/app/AlertDialog;

    return-void
.end method

.method public static isShowDialog(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCTACardStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private makeTitleString()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "<font color=\'#1993e8\'><a href=\'http://www.miui.com/res/doc/eula/cn.html\'>"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "</a></font>"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "<font color=\'#1993e8\'><a href=\'http://www.miui.com/res/doc/privacy/cn.html\'>"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "</a></font>"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1b040072

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v5, 0x1b0900a3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->makeTitleString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Lcom/miui/personalassistant/ui/widget/CTADialog$NoUnderlineSpan;

    invoke-direct {v2}, Lcom/miui/personalassistant/ui/widget/CTADialog$NoUnderlineSpan;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-interface {v3, v2, v8, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance v6, Lmiui/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/personalassistant/ui/widget/CTADialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v6, v5}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1b0b00b5

    invoke-virtual {v6, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1b0b00b3

    new-instance v7, Lcom/miui/personalassistant/ui/widget/CTADialog$2;

    invoke-direct {v7, p0}, Lcom/miui/personalassistant/ui/widget/CTADialog$2;-><init>(Lcom/miui/personalassistant/ui/widget/CTADialog;)V

    invoke-virtual {v5, v6, v7}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1b0b00b2

    new-instance v7, Lcom/miui/personalassistant/ui/widget/CTADialog$1;

    invoke-direct {v7, p0}, Lcom/miui/personalassistant/ui/widget/CTADialog$1;-><init>(Lcom/miui/personalassistant/ui/widget/CTADialog;)V

    invoke-virtual {v5, v6, v7}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/miui/personalassistant/ui/widget/CTADialog;->sDialog:Lmiui/app/AlertDialog;

    sget-object v5, Lcom/miui/personalassistant/ui/widget/CTADialog;->sDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v5}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method
