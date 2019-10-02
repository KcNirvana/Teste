.class public Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIPlusPasswordDialog.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IEditListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;,
        Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;

.field private mMode:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

.field private vEdit:Landroid/widget/EditText;

.field private vInfo:Landroid/widget/TextView;

.field private vLayout:Landroid/widget/LinearLayout;

.field private vLine:Landroid/view/View;

.field private vShow1:Landroid/widget/TextView;

.field private vShow2:Landroid/widget/TextView;

.field private vShow3:Landroid/widget/TextView;

.field private vShow4:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;

.field private vUIButtonBar:Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mMode:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mMode:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mMode:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mMode:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vUIButtonBar:Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow3:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow4:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mListener:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vEdit:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public clearTextDelay()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$4;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_password_dialog:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_info:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vInfo:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_password_show1:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow1:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_password_show2:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow2:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_password_show3:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow3:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_password_show4:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow4:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vEdit:Landroid/widget/EditText;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_line:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vLine:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_buttonbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vUIButtonBar:Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$2;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$3;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow4:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMode(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mMode:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    return-void
.end method

.method public setViews(IIIILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;)V
    .locals 7

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v3, v0

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;)V

    return-void
.end method

.method public setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;)V
    .locals 2

    iput-object p5, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mListener:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;

    iget-object p5, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vLine:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v1, 0x0

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p5, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow1:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow2:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow3:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow4:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow1:Landroid/widget/TextView;

    sget p2, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow2:Landroid/widget/TextView;

    sget p2, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow3:Landroid/widget/TextView;

    sget p2, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vShow4:Landroid/widget/TextView;

    sget p2, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->mMode:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    const/4 p5, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vUIButtonBar:Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$5;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$5;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$6;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V

    invoke-virtual {p1, p3, p4, p2, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setTwoButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vUIButtonBar:Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    invoke-virtual {p1, p5, v1, p5}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonEnabled(ZZZ)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vUIButtonBar:Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    const/4 p2, 0x0

    new-instance p3, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$7;

    invoke-direct {p3, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$7;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V

    invoke-virtual {p1, p4, p2, p3}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setOneButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->vUIButtonBar:Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    invoke-virtual {p1, p5, p5, p5}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonEnabled(ZZZ)V

    :goto_2
    return-void
.end method
