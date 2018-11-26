.class public Lcom/miui/antivirus/whitelist/WhiteListItemView;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field private static final synthetic auB:[I


# instance fields
.field private auA:Lcom/miui/common/d/f;

.field private auy:Landroid/widget/CheckBox;

.field private auz:Lcom/miui/antivirus/whitelist/k;

.field private mIconView:Landroid/widget/ImageView;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/whitelist/WhiteListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static synthetic aAN()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auB:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auB:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->values()[Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    invoke-virtual {v1}, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awt:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    invoke-virtual {v1}, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auB:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public aAL(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auA:Lcom/miui/common/d/f;

    return-void
.end method

.method public aAM(Lcom/miui/antivirus/whitelist/k;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auz:Lcom/miui/antivirus/whitelist/k;

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auz:Lcom/miui/antivirus/whitelist/k;

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/k;->aAV()Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    move-result-object v0

    invoke-static {}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->aAN()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/whitelist/k;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auy:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auy:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/miui/antivirus/whitelist/k;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f070652

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auz:Lcom/miui/antivirus/whitelist/k;

    invoke-virtual {v1}, Lcom/miui/antivirus/whitelist/k;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f070653

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "apk_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auz:Lcom/miui/antivirus/whitelist/k;

    invoke-virtual {v1}, Lcom/miui/antivirus/whitelist/k;->aAR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0a02be

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auy:Landroid/widget/CheckBox;

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListItemView;->auy:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
