.class public Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;
.super Landroid/app/Fragment;
.source "ExpressSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpressSettingFragment"


# instance fields
.field private mDefaultPhones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

.field private mPhoneGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/personalassistant/express/bean/PhoneGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mDefaultPhones:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->adjustPhoneGroups(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;)Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    return-object v0
.end method

.method private adjustPhoneGroups(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    invoke-virtual {v8}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->clear()V

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhones()Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x0

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v9, v11}, Lcom/miui/personalassistant/express/bean/Phone;->setDefaulted(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v4, Lcom/miui/personalassistant/express/bean/Phone;

    add-int/lit8 v9, v3, 0x1

    invoke-direct {v4, v7, v12, v9}, Lcom/miui/personalassistant/express/bean/Phone;-><init>(Ljava/lang/String;ZI)V

    const/4 v2, 0x0

    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/personalassistant/express/bean/Phone;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    invoke-interface {v6, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v1, :cond_1

    invoke-virtual {v8, v4}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->addPhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhoneCount()I

    move-result v9

    if-nez v9, :cond_5

    const v9, 0x1b0b0510

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setTitle(Ljava/lang/String;)V

    new-instance v9, Lcom/miui/personalassistant/express/bean/Phone;

    const v10, 0x1b0b050c

    invoke-virtual {p0, v10}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v11, v13}, Lcom/miui/personalassistant/express/bean/Phone;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v8, v9}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setPlaceHolder(Lcom/miui/personalassistant/express/bean/Phone;)V

    :goto_3
    return-void

    :cond_5
    const v9, 0x1b0b0511

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setTitle(Ljava/lang/String;)V

    new-instance v9, Lcom/miui/personalassistant/express/bean/Phone;

    const v10, 0x1b0b050d

    invoke-virtual {p0, v10}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v11, v13}, Lcom/miui/personalassistant/express/bean/Phone;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v8, v9}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setPlaceHolder(Lcom/miui/personalassistant/express/bean/Phone;)V

    invoke-virtual {v8}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhones()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_3
.end method

.method private initPhoneData()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->buildBindedGroup()Lcom/miui/personalassistant/express/bean/PhoneGroup;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->buildToBindGroup()Lcom/miui/personalassistant/express/bean/PhoneGroup;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    invoke-direct {v3, p0, v4, v5}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;-><init>(Landroid/app/Fragment;Landroid/app/Activity;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;-><init>(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$1;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/miui/personalassistant/express/bean/Phone;

    invoke-direct {v4, v1, v6, v6}, Lcom/miui/personalassistant/express/bean/Phone;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v0, v4}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->addPhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/express/Preferences;->getDefaultPhoneNumbers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mDefaultPhones:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mDefaultPhones:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->adjustPhoneGroups(Ljava/util/Map;)V

    return-void
.end method

.method private initPhoneView(Landroid/view/View;)V
    .locals 2

    const v1, 0x1b09021c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private initProviderView(Landroid/view/View;)V
    .locals 2

    const v1, 0x1b09021e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->initPhoneView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->initProviderView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public buildBindedGroup()Lcom/miui/personalassistant/express/bean/PhoneGroup;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;-><init>(I)V

    const v1, 0x1b0b050f

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildToBindGroup()Lcom/miui/personalassistant/express/bean/PhoneGroup;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;-><init>(I)V

    const v1, 0x1b0b0510

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v7, "ExpressSettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActivityResult: requestCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", resultCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    const/4 v7, -0x1

    if-ne p2, v7, :cond_4

    iget-object v7, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    if-nez v7, :cond_0

    new-instance v7, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    invoke-direct {v7, p0, v8, v9}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;-><init>(Landroid/app/Fragment;Landroid/app/Activity;Ljava/util/Map;)V

    iput-object v7, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    :cond_0
    iget-object v7, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    iget-object v7, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneGroups:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    const-string/jumbo v7, "phone"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhones()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->removePhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->addPhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance v7, Lcom/miui/personalassistant/express/bean/Phone;

    invoke-direct {v7, v5, v10, v10}, Lcom/miui/personalassistant/express/bean/Phone;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->addPhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    :cond_3
    iget-object v7, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "com.cainiao.wireless"

    invoke-static {v1}, Lcom/miui/personalassistant/util/IntentUtil;->intentToAppStore(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/personalassistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b09021e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->initPhoneData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b040083

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->initViews(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->mPhoneAdapter:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->getDeleteDialog()Lmiui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
