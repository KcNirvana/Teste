.class final Lcom/miui/gamebooster/d/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final synthetic sP:[I


# instance fields
.field final synthetic sO:Lcom/miui/gamebooster/d/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic uT()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/d/h;->sP:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/d/h;->sP:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->values()[Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qW:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qX:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qY:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qZ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/gamebooster/d/h;->sP:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const v4, 0x7f070986

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    invoke-static {}, Lcom/miui/gamebooster/d/h;->uT()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mL()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f0a0209

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mO()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v0}, Lcom/miui/gamebooster/d/b;->uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gamebox_stick"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v2}, Lcom/miui/gamebooster/d/b;->uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/common/b/k;->aIs(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v3}, Lcom/miui/gamebooster/d/b;->uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_1

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-static {v3, v1, v0, v4}, Lcom/miui/gamebooster/a/k;->fI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uK()V

    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v0}, Lcom/miui/gamebooster/d/b;->uS(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->createFloatView()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mN()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v1}, Lcom/miui/gamebooster/d/b;->uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0, v4}, Lcom/miui/gamebooster/a/k;->fI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mM()Lcom/miui/gamebooster/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v1}, Lcom/miui/gamebooster/d/b;->uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/miui/gamebooster/a/l;->fJ(Lcom/miui/gamebooster/model/a;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/a;->mz()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qO:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uK()V

    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v0}, Lcom/miui/gamebooster/d/b;->uS(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->createFloatView()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/d/h;->sO:Lcom/miui/gamebooster/d/b;

    invoke-static {v0}, Lcom/miui/gamebooster/d/b;->uR(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/b/e;->tq()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
