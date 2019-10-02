.class public final Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "AreaCodePicker.kt"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAreaCodePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaCodePicker.kt\ncom/xiaomi/passport/ui/internal/AreaCodePickerAdapter\n+ 2 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n*L\n1#1,192:1\n74#2,5:193\n74#2,5:198\n*E\n*S KotlinDebug\n*F\n+ 1 AreaCodePicker.kt\ncom/xiaomi/passport/ui/internal/AreaCodePickerAdapter\n*L\n68#1,5:193\n69#1,5:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u0015\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u001cJ\"\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020!H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/SectionIndexer;",
        "mContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mList",
        "",
        "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
        "mPositionForSection",
        "",
        "mSectionForPosition",
        "mSections",
        "",
        "",
        "[Ljava/lang/String;",
        "buildPickerSectionList",
        "",
        "getCount",
        "",
        "getItem",
        "position",
        "getItemId",
        "",
        "getPositionForSection",
        "section",
        "getSectionForPosition",
        "getSections",
        "()[Ljava/lang/String;",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionForSection:[I

.field private mSectionForPosition:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->buildPickerSectionList()V

    return-void
.end method

.method private final buildPickerSectionList()V
    .locals 9

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->getRecommendCountryPhoneNumDataList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->getCountryPhoneNumDataList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mList:Ljava/util/List;

    if-nez v2, :cond_0

    const-string v3, "mList"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v3, "totalList"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaomi/passport/ui/R$array;->alphabet_table:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mContext.resources.getSt\u2026y(R.array.alphabet_table)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mSections:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mSectionForPosition:[I

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mSections:[Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v2, "mSections"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    array-length v1, v1

    new-array v1, v1, [I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mPositionForSection:[I

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_2
    if-ge v4, v1, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_7

    invoke-virtual {p0, v4}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->getItem(I)Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    move-result-object v6

    iget-object v6, v6, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->countryName:Ljava/lang/String;

    const-string v7, "getItem(i).countryName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mSections:[Ljava/lang/String;

    if-nez v7, :cond_4

    const-string v8, "mSections"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-static {v7, v6}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto :goto_3

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v6, 0x0

    :goto_3
    if-ne v6, v2, :cond_8

    const/4 v6, 0x0

    :cond_8
    iget-object v7, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mSectionForPosition:[I

    if-nez v7, :cond_9

    const-string v8, "mSectionForPosition"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    aput v6, v7, v4

    if-eq v5, v6, :cond_c

    :goto_4
    if-ge v5, v6, :cond_b

    iget-object v7, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mPositionForSection:[I

    if-nez v7, :cond_a

    const-string v8, "mPositionForSection"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    aput v4, v7, v5

    goto :goto_4

    :cond_b
    move v5, v6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "mList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "mList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->getItem(I)Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mPositionForSection:[I

    if-nez v0, :cond_0

    const-string v1, "mPositionForSection"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mSectionForPosition:[I

    if-nez v0, :cond_0

    const-string v1, "mSectionForPosition"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public bridge synthetic getSections()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mSections:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "mSections"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/xiaomi/passport/ui/R$layout;->passport_area_code_list_item:I

    invoke-static {p2, v0, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/xiaomi/passport/ui/internal/AreaCodePickerListItem;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.xiaomi.passport.ui.internal.AreaCodePickerListItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Lcom/xiaomi/passport/ui/internal/AreaCodePickerListItem;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerAdapter;->getItem(I)Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/xiaomi/passport/ui/internal/AreaCodePickerListItem;->bind(Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    return-object p2
.end method
