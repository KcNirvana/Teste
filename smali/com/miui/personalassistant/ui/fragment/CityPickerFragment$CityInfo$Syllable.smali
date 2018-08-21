.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Syllable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;",
        ">;"
    }
.end annotation


# instance fields
.field private mChineseCharacter:Ljava/lang/Character;

.field private mPinyin:Ljava/lang/String;

.field final synthetic this$1:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;Ljava/lang/Character;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->this$1:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->mChineseCharacter:Ljava/lang/Character;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->mPinyin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->mPinyin:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->mPinyin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->mChineseCharacter:Ljava/lang/Character;

    iget-object v3, p1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->mChineseCharacter:Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;->compareTo(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo$Syllable;)I

    move-result v0

    return v0
.end method
