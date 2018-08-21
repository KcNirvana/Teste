.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:J

.field private mName:Ljava/lang/String;

.field private mPinyinName:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;

.field private mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mShortName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mPinyinName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mId:J

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-direct {v3, p0, v4, v5}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;Ljava/lang/Character;Ljava/lang/String;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mShortName:Ljava/lang/String;

    invoke-virtual {v2, p5, p6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-static {p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, p5, p6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;)I
    .locals 5

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    array-length v3, v3

    iget-object v4, p1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->compareTo(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    array-length v3, v3

    iget-object v4, p1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mSyllables:[Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    array-length v4, v4

    sub-int v2, v3, v4

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->compareTo(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;)I

    move-result v0

    return v0
.end method

.method public getCompoundName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mPinyinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->mName:Ljava/lang/String;

    return-object v0
.end method
