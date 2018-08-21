.class public Lcom/miui/personalassistant/ui/model/YellowPagePickerRecommendDataEntry;
.super Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;
.source "YellowPagePickerRecommendDataEntry.java"


# static fields
.field public static final TYPE:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/personalassistant/ui/model/YellowPagePickerRecommendDataEntry;->mType:I

    return-void
.end method
