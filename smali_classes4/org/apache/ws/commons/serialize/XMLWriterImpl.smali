.class public Lorg/apache/ws/commons/serialize/XMLWriterImpl;
.super Ljava/lang/Object;
.source "XMLWriterImpl.java"

# interfaces
.implements Lorg/apache/ws/commons/serialize/XMLWriter;


# static fields
.field private static final STATE_IN_ELEMENT:I = 0x2

.field private static final STATE_IN_START_ELEMENT:I = 0x1

.field private static final STATE_OUTSIDE:I


# instance fields
.field curIndent:I

.field private declarating:Z

.field private delayedPrefixes:Ljava/util/Map;

.field private encoding:Ljava/lang/String;

.field private flushing:Z

.field private indentString:Ljava/lang/String;

.field private indenting:Z

.field private l:Lorg/xml/sax/Locator;

.field private lineFeed:Ljava/lang/String;

.field private state:I

.field private w:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    return-void
.end method

.method private indentMe()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getLineFeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getIndentString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private stopTerminator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    :cond_1
    return-void
.end method

.method private writeCData(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v2}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->canEncode(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&#"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->stopTerminator()V

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_6

    aget-char v0, p1, p2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->canEncode(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v2, "&#"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :pswitch_0
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isFlushing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to flush target writer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    :cond_0
    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz p1, :cond_3

    :try_start_0
    iget p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string p2, "/>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentMe()V

    :cond_2
    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string p2, "</"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    :goto_0
    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "xmlns"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->l:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIndentString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentString:Ljava/lang/String;

    return-object v0
.end method

.method public getLineFeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->lineFeed:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->characters([CII)V

    return-void
.end method

.method public isDeclarating()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->declarating:Z

    return v0
.end method

.method public isFlushing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->flushing:Z

    return v0
.end method

.method public isIndenting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indenting:Z

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->stopTerminator()V

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setDeclarating(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->declarating:Z

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->l:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFlushing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->flushing:Z

    return-void
.end method

.method public setIndentString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentString:Ljava/lang/String;

    return-void
.end method

.method public setIndenting(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indenting:Z

    return-void
.end method

.method public setLineFeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->lineFeed:Ljava/lang/String;

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Don\'t know how to skip entities"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isDeclarating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v2, " encoding=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getLineFeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to write XML declaration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->stopTerminator()V

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    if-lez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentMe()V

    :cond_0
    iget p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    :cond_1
    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x22

    const/16 p3, 0x20

    if-eqz p4, :cond_3

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->writeCData(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz p4, :cond_5

    iget-object p4, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p4

    if-lez p4, :cond_5

    iget-object p4, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(I)V

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_5
    iput p2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "xmlns"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
