.class public Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompanyPickerAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final TAG:Ljava/lang/String; = "CompanyPickerAdapter"


# instance fields
.field private mCompanyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/CompanyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mSectionText:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionToPosition:[I

.field private mSections:[Ljava/lang/String;

.field private mSeparateIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->initData(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->initHeadersText()V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->initPickerSections()V

    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v4, "pickerCompanyList"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getOrder()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter$1;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter$1;-><init>(Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter$2;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter$2;-><init>(Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSeparateIndex:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private initHeadersText()V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionText:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionText:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionText:Landroid/util/SparseArray;

    iget v3, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSeparateIndex:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initPickerSections()V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSeparateIndex:I

    if-ge v4, v5, :cond_0

    const-string/jumbo v5, "!"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "!"

    invoke-interface {v3, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSeparateIndex:I

    :goto_1
    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/miui/personalassistant/express/util/PinyinUtil;->getFirstLetterIgnoreCase(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSections:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSections:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionToPosition:[I

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSections:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionToPosition:[I

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSections:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-interface {v2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/personalassistant/express/bean/CompanyInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mCompanyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->getItem(I)Lcom/miui/personalassistant/express/bean/CompanyInfo;

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

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionToPosition:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionToPosition:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionToPosition:[I

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

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x1b040080

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->getItem(I)Lcom/miui/personalassistant/express/bean/CompanyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getCode()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->mSectionText:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    move-object v2, p2

    check-cast v2, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;

    goto :goto_0
.end method
