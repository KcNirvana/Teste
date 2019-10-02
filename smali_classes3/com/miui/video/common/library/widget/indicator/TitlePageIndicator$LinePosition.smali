.class public final enum Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;
.super Ljava/lang/Enum;
.source "TitlePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

.field public static final enum Bottom:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

.field public static final enum Top:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    const-string v1, "Bottom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->Bottom:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    new-instance v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    const-string v1, "Top"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->Top:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    sget-object v1, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->Bottom:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->Top:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->$VALUES:[Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;
    .locals 5

    invoke-static {}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->values()[Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;
    .locals 1

    const-class v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->$VALUES:[Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    invoke-virtual {v0}, [Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method
