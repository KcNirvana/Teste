.class final Lcom/ooyala/adtech/VASTParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/VASTParser$VASTHandler;
    }
.end annotation


# static fields
.field static a:Lcom/ooyala/adtech/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ooyala/adtech/d;

    invoke-direct {v0}, Lcom/ooyala/adtech/d;-><init>()V

    sput-object v0, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Z)Lcom/ooyala/adtech/Ad;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v2, Lcom/ooyala/adtech/VASTParser$VASTHandler;

    invoke-direct {v2, p1}, Lcom/ooyala/adtech/VASTParser$VASTHandler;-><init>(Z)V

    :try_start_1
    new-instance p1, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, v2, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "^At line 1, column 0:.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "^At line (\\d+), column \\d+:.*"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Malformed XML on line %s."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Empty ticket."

    :cond_1
    :goto_0
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_MALFORMED_XML:I

    invoke-direct {p1, v0, p0}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    iget-object p0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;->adtechException:Lcom/ooyala/adtech/a;

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->INTERNAL_ERROR:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method
