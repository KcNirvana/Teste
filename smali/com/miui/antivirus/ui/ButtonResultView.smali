.class public Lcom/miui/antivirus/ui/ButtonResultView;
.super Lcom/miui/antivirus/ui/g;
.source ""


# static fields
.field private static final synthetic aqq:[I


# instance fields
.field private aqp:Lcom/miui/antivirus/model/b;

.field private mButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static synthetic awu()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/ui/ButtonResultView;->aqq:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/ui/ButtonResultView;->aqq:[I

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alj:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alk:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->all:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alm:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->aln:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/antivirus/ui/ButtonResultView;->aqq:[I

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


# virtual methods
.method public awt(Lcom/miui/antivirus/model/b;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView;->aqp:Lcom/miui/antivirus/model/b;

    invoke-static {}, Lcom/miui/antivirus/ui/ButtonResultView;->awu()[I

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
    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->mButton:Landroid/widget/Button;

    const v1, 0x7f070534

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/antivirus/ui/ButtonResultView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/antivirus/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/a;->aCp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqR()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/a;->aBP(Lcom/miui/antivirus/model/b;)V

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/a;->aCA(Lcom/miui/antivirus/model/b;)V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->aqD:Lcom/miui/common/d/f;

    iget-object v1, p0, Lcom/miui/antivirus/ui/ButtonResultView;->aqp:Lcom/miui/antivirus/model/b;

    const/16 v2, 0x3f4

    invoke-virtual {v0, v2, v1}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/antivirus/ui/g;->onFinishInflate()V

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/ButtonResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
