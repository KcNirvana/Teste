.class public Lcom/miui/securityscan/shortcut/ShortcutListItemView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final synthetic Le:[I


# instance fields
.field private Lc:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

.field private Ld:Lcom/miui/securityscan/shortcut/c;

.field private mIconView:Landroid/widget/ImageView;

.field private mSlidingButton:Lmiui/widget/SlidingButton;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static synthetic Mn()[I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Le:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Le:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->values()[Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KJ:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KK:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KL:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KM:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KN:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KO:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KP:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KQ:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KR:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KS:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KT:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KU:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KV:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Le:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public Ml(Lcom/miui/securityscan/shortcut/c;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Ld:Lcom/miui/securityscan/shortcut/c;

    iget-object v0, p1, Lcom/miui/securityscan/shortcut/c;->KX:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Lc:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-boolean v2, p1, Lcom/miui/securityscan/shortcut/c;->KW:Z

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-static {}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Mn()[I

    move-result-object v1

    iget-object v2, p1, Lcom/miui/securityscan/shortcut/c;->KX:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v2}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0705d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f07060a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070606

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070607

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070609

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070605

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070608

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f020217

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0705d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f07035b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0201b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070779

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public Mm()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Ld:Lcom/miui/securityscan/shortcut/c;

    iput-boolean p2, v0, Lcom/miui/securityscan/shortcut/c;->KW:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Lc:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/a;->LV(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Lc:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/a;->Mf(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-void
.end method
