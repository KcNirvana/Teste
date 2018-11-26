.class public Lcom/miui/antivirus/ui/MonitorSafeResultView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aoK:[Landroid/widget/ImageView;

.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public avf()V
    .locals 9

    const/4 v1, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/utils/a;->auh(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    const v1, 0x7f020312

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    const v2, 0x7f070574

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    sget-object v5, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v5}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v1, v1, v7

    sget-object v5, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v5}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v1, v1, v8

    sget-object v5, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v5}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    const v5, 0x7f070573

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    if-ge v2, v6, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v1, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg_icon://"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    sget-object v6, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v5, v6}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :try_start_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v5, v0, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v2, 0x7f020312

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    const v2, 0x7f070574

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.SAFE_PAY_MONITOR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/miui/antivirus/a/e;->azH()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a038d

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    const v0, 0x7f0a038a

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    const v0, 0x7f0a038b

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->aoK:[Landroid/widget/ImageView;

    const v0, 0x7f0a038c

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    return-void
.end method
