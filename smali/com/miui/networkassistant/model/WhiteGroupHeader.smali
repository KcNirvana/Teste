.class public Lcom/miui/networkassistant/model/WhiteGroupHeader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mHeaderTitle:Ljava/lang/String;

.field private mHeaderType:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupHeaderType()Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/WhiteGroupHeader;->mHeaderType:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/WhiteGroupHeader;->mHeaderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupHeaderType(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/WhiteGroupHeader;->mHeaderType:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/WhiteGroupHeader;->mHeaderTitle:Ljava/lang/String;

    return-void
.end method
