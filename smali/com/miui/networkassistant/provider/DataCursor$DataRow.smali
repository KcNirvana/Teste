.class public Lcom/miui/networkassistant/provider/DataCursor$DataRow;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;


# direct methods
.method public varargs constructor <init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getInt()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getShort()S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getType()I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->mEntrys:[Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->isNull()Z

    move-result v0

    goto :goto_0
.end method
