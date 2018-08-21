.class public Lcom/miui/personalassistant/express/bean/PhoneGroup;
.super Ljava/lang/Object;
.source "PhoneGroup.java"


# instance fields
.field private phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private placeHolder:Lcom/miui/personalassistant/express/bean/Phone;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->type:I

    return-void
.end method


# virtual methods
.method public addPhone(Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->type:I

    check-cast p1, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    iget v1, p1, Lcom/miui/personalassistant/express/bean/PhoneGroup;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->placeHolder:Lcom/miui/personalassistant/express/bean/Phone;

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/Phone;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceHolder()Lcom/miui/personalassistant/express/bean/Phone;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->placeHolder:Lcom/miui/personalassistant/express/bean/Phone;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->type:I

    return v0
.end method

.method public removePhone(Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPhones(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/Phone;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    return-void
.end method

.method public setPlaceHolder(Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->placeHolder:Lcom/miui/personalassistant/express/bean/Phone;

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhoneGroup{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/PhoneGroup;->phones:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
