.class public Lorg/apache/ws/commons/util/NamespaceContextImpl;
.super Ljava/lang/Object;
.source "NamespaceContextImpl.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field private cachedPrefix:Ljava/lang/String;

.field private cachedURI:Ljava/lang/String;

.field private prefixList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkContext(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/ws/commons/util/NamespaceContextImpl;->getContext()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " isn\'t the prefix, which has been defined last."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The namespace prefix must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_3
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "xml"

    return-object p1

    :cond_4
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "xmlns"

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The namespace URI must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContext()I
    .locals 3

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_3
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The namespace prefix must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "xml"

    return-object p1

    :cond_3
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "xmlns"

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The namespace URI must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4

    if-eqz p1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "xmlns"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "xml"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The namespace URI must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefixes()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isPrefixDeclared(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The namespace prefix must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The namespace prefix must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
