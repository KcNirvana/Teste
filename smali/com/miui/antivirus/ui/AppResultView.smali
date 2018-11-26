.class public Lcom/miui/antivirus/ui/AppResultView;
.super Lcom/miui/antivirus/ui/g;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final synthetic aoQ:[I

.field private static final synthetic aoR:[I


# instance fields
.field private aoN:Landroid/widget/LinearLayout;

.field private aoO:Landroid/widget/CheckBox;

.field private aoP:Lcom/miui/antivirus/model/b;

.field private mButton:Landroid/widget/Button;

.field private mIconView:Landroid/widget/ImageView;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/AppResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static synthetic avh()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/ui/AppResultView;->aoQ:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/ui/AppResultView;->aoQ:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/model/AppModel$AppGroup;->values()[Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->ali:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alj:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alk:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->all:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alm:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->aln:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/antivirus/ui/AppResultView;->aoQ:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic avi()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/ui/AppResultView;->aoR:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/ui/AppResultView;->aoR:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->values()[Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awc:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    invoke-virtual {v1}, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awd:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    invoke-virtual {v1}, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/antivirus/ui/AppResultView;->aoR:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public avg(Lcom/miui/antivirus/model/b;)V
    .locals 6

    const v5, 0x7f07052e

    const/16 v3, 0x8

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-static {}, Lcom/miui/antivirus/ui/AppResultView;->avh()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqL()Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/miui/antivirus/model/c;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/c;->ara()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070525

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f07052a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    const v1, 0x7f07052d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/AppResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070528

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f070529

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    const v1, 0x7f07052c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const-string/jumbo v0, "pkg_icon://pl.zdunex25.updater"

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070532

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f07052b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    const v1, 0x7f070531

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070549

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f07054a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "pkg_icon://com.android.mms"

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    const v1, 0x7f07052f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070547

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f070548

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "drawable://2130837593"

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070545

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f070546

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/AppResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020313

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqJ()Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    move-result-object v0

    invoke-static {}, Lcom/miui/antivirus/ui/AppResultView;->avi()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoO:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoO:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqR()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoN:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f070536

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f070537

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "apk_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    const v1, 0x7f070538

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqL()Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, p2}, Lcom/miui/antivirus/model/b;->aqW(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/a;->aBM(Lcom/miui/antivirus/model/b;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aqD:Lcom/miui/common/d/f;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    const/16 v2, 0x3f4

    invoke-virtual {v0, v2, v1}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqL()Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/miui/antivirus/ui/f;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v3, p0, Lcom/miui/antivirus/ui/AppResultView;->aqD:Lcom/miui/common/d/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/antivirus/ui/f;-><init>(Landroid/content/Context;Lcom/miui/antivirus/model/b;Lcom/miui/common/d/f;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/f;->show()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/antivirus/ui/g;->onFinishInflate()V

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/AppResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/AppResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/AppResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/AppResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    const v0, 0x7f0a02be

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/AppResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoO:Landroid/widget/CheckBox;

    const v0, 0x7f0a00c7

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/AppResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoN:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoO:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/miui/antivirus/ui/AppResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/miui/antivirus/ui/AppResultView;->avh()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->aqL()Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    check-cast v0, Lcom/miui/antivirus/model/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/c;->ara()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/b;->arA(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    const v2, 0x7f070566

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arB(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/ui/AppResultView;->awy(Lcom/miui/antivirus/model/g;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arA(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    const v2, 0x7f070567

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arB(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arA(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/ui/AppResultView;->awy(Lcom/miui/antivirus/model/g;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arA(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AppResultView;->aoP:Lcom/miui/antivirus/model/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AppResultView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/ui/AppResultView;->awy(Lcom/miui/antivirus/model/g;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
