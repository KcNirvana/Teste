.class public Lcom/miui/personalassistant/express/bean/Phone;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/personalassistant/express/bean/Phone;",
        ">;"
    }
.end annotation


# instance fields
.field private defaulted:Z

.field private index:I

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/Phone;->number:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/bean/Phone;->defaulted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/Phone;->number:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/personalassistant/express/bean/Phone;->defaulted:Z

    iput p3, p0, Lcom/miui/personalassistant/express/bean/Phone;->index:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/personalassistant/express/bean/Phone;)I
    .locals 2
    .param p1    # Lcom/miui/personalassistant/express/bean/Phone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/miui/personalassistant/express/bean/Phone;->index:I

    iget v1, p1, Lcom/miui/personalassistant/express/bean/Phone;->index:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/bean/Phone;->compareTo(Lcom/miui/personalassistant/express/bean/Phone;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/personalassistant/express/bean/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/Phone;->number:Ljava/lang/String;

    check-cast p1, Lcom/miui/personalassistant/express/bean/Phone;

    iget-object v1, p1, Lcom/miui/personalassistant/express/bean/Phone;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/express/bean/Phone;->index:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/Phone;->number:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaulted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/Phone;->defaulted:Z

    return v0
.end method

.method public setDefaulted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/Phone;->defaulted:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/express/bean/Phone;->index:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/Phone;->number:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/Phone;->number:Ljava/lang/String;

    return-object v0
.end method
