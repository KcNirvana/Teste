.class public Lcom/miui/video/service/widget/ui/UITitleBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/widget/ui/UITitleBar$ISetUITitlebarListener;
    }
.end annotation


# instance fields
.field private vImgLeft:Landroid/widget/ImageView;

.field private vImgRight:Landroid/widget/ImageView;

.field private vLayoutLeft:Landroid/widget/LinearLayout;

.field private vLayoutRight:Landroid/widget/LinearLayout;

.field private vTitle:Landroid/widget/TextView;

.field private vTxtLeft:Landroid/widget/TextView;

.field private vTxtRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setViews(Landroid/widget/ImageView;I)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 1

    if-lez p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    return-object p0
.end method

.method private setViews(Landroid/widget/ImageView;Landroid/widget/TextView;II)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 1

    const/4 v0, 0x0

    if-lez p3, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    if-eqz p2, :cond_1

    if-lez p4, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-object p0
.end method

.method private setViews(Landroid/widget/ImageView;Landroid/widget/TextView;IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-lez p3, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    if-eqz p9, :cond_1

    invoke-virtual {p1, p9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_9

    if-lez p4, :cond_3

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    invoke-static {p5}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, ""

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-lez p6, :cond_5

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/miui/video/service/R$dimen;->sp_16:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    if-lez p7, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/miui/video/service/R$color;->c_black:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    if-lez p8, :cond_7

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    if-eqz p9, :cond_8

    invoke-virtual {p2, p9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_8
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_6
    return-object p0
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->ui_titlebar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->inflateView(I)V

    sget v0, Lcom/miui/video/service/R$id;->v_left_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vLayoutLeft:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/service/R$id;->v_right_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vLayoutRight:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/service/R$id;->v_img_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgLeft:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_txt_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtLeft:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_txt_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_img_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    return-void
.end method

.method public setLeftView(I)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/miui/video/service/widget/ui/UITitleBar;->setViews(Landroid/widget/ImageView;I)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object p1

    return-object p1
.end method

.method public setLeftView(II)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtLeft:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/miui/video/service/widget/ui/UITitleBar;->setViews(Landroid/widget/ImageView;Landroid/widget/TextView;II)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object p1

    return-object p1
.end method

.method public setLeftView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 11

    move-object v10, p0

    iget-object v1, v10, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgLeft:Landroid/widget/ImageView;

    iget-object v2, v10, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtLeft:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/miui/video/service/widget/ui/UITitleBar;->setViews(Landroid/widget/ImageView;Landroid/widget/TextView;IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object v0

    return-object v0
.end method

.method public setRightView(I)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/miui/video/service/widget/ui/UITitleBar;->setViews(Landroid/widget/ImageView;I)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object p1

    return-object p1
.end method

.method public setRightView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 11

    move-object v10, p0

    iget-object v1, v10, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    iget-object v2, v10, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/miui/video/service/widget/ui/UITitleBar;->setViews(Landroid/widget/ImageView;Landroid/widget/TextView;IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object v0

    return-object v0
.end method

.method public setRightView(IILjava/lang/String;III)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vImgRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-lez p4, :cond_3

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/service/R$dimen;->sp_16:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    if-lez p5, :cond_4

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UITitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/service/R$color;->c_black:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    if-lez p6, :cond_5

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTxtRight:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setTitleView(ILjava/lang/String;)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public setTitleView(ILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 11

    move-object v10, p0

    iget-object v2, v10, Lcom/miui/video/service/widget/ui/UITitleBar;->vTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/miui/video/service/widget/ui/UITitleBar;->setViews(Landroid/widget/ImageView;Landroid/widget/TextView;IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object v0

    return-object v0
.end method
