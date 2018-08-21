.class public Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssistantPickerAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final CONSTANT:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "YellowPagePickerAdapter"


# instance fields
.field private mBackendDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackendDataToPresentation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIndexTarget:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionAddOne:Z

.field private mPresentationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPresentationToBackendData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendBackendDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendPresentationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionToPosition:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPositionAddOne:Z

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->prepareData(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->buildPickerList()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->buildPickerSections()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->buildPickerHeadersText()V

    return-void
.end method

.method private buildPickerHeadersText()V
    .locals 7

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionText:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getFirstCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionText:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataToPresentation:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildPickerHeadersText(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionText:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getFirstCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionText:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataToPresentation:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildPickerList()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->buildEntries(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method private buildPickerList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->buildEntries(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method private buildPickerSections()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationToBackendData:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataToPresentation:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSearchMap:Ljava/util/HashMap;

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mIndexTarget:I

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mIndexTarget:I

    if-ne v8, v12, :cond_1

    iget-object v6, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mRecommendPresentationList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationList:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    const-string/jumbo v8, "!"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "!"

    invoke-interface {v7, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mIndexTarget:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mRecommendBackendDataList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_3
    :try_start_0
    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationToBackendData:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataToPresentation:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v8, "YellowPagePickerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSearchMap:Ljava/util/HashMap;

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    new-array v8, v11, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSections:[Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSections:[Ljava/lang/String;

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionToPosition:[I

    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSections:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_6

    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionToPosition:[I

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSections:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-interface {v2, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method private getFirstCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareData(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "picker_recommend_presentation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mRecommendPresentationList:Ljava/util/ArrayList;

    const-string/jumbo v0, "picker_recommend_backend_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mRecommendBackendDataList:Ljava/util/ArrayList;

    const-string/jumbo v0, "picker_presentation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationList:Ljava/util/ArrayList;

    const-string/jumbo v0, "picker_backend_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mBackendDataList:Ljava/util/ArrayList;

    const-string/jumbo v0, "picker_index_target"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mIndexTarget:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionToPosition:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionToPosition:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionToPosition:[I

    aget v2, v2, v0

    if-le v2, p1, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v3, 0x1b040125

    invoke-virtual {v9, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->getPresentation()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    add-int/lit8 v3, p1, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->getPresentation()Ljava/lang/String;

    move-result-object v10

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionText:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionText:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->getData()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mIndexTarget:I

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSectionText:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->bind(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_1

    :catch_0
    move-exception v7

    const/4 v6, 0x1

    goto :goto_1
.end method

.method public getmPositionAddOne()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPositionAddOne:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setPresentationList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSearchMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mSearchMap:Ljava/util/HashMap;

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPresentationToBackendData:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->buildPickerHeadersText(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v1}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->buildPickerList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setmPositionAddOne(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->mPositionAddOne:Z

    return-void
.end method
