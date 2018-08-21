.class public Lcom/miui/calendar/util/SimpleProvider$ResultRow;
.super Ljava/lang/Object;
.source "SimpleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/SimpleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultRow"
.end annotation


# instance fields
.field private mItems:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    return-void
.end method

.method public static create([Ljava/lang/Object;)Lcom/miui/calendar/util/SimpleProvider$ResultRow;
    .locals 1

    new-instance v0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;

    invoke-direct {v0, p0}, Lcom/miui/calendar/util/SimpleProvider$ResultRow;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getItem()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemAsDouble()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getItemAsDouble(I)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getItemAsFloat()Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getItemAsFloat(I)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getItemAsInt()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemAsInt(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemAsLong()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getItemAsLong(I)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getItemAsShort()Ljava/lang/Short;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Short;

    return-object v0
.end method

.method public getItemAsShort(I)Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Short;

    return-object v0
.end method
