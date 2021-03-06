.class public Lfi/iki/elonen/NanoHTTPD$ContentType;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContentType"
.end annotation


# static fields
.field private static final ASCII_ENCODING:Ljava/lang/String; = "US-ASCII"

.field private static final BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BOUNDARY_REGEX:Ljava/lang/String; = "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final CHARSET_REGEX:Ljava/lang/String; = "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

.field private static final CONTENT_REGEX:Ljava/lang/String; = "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)"

.field private static final MIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final MULTIPART_FORM_DATA_HEADER:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final contentTypeHeader:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$ContentType;->MIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$ContentType;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$ContentType;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$ContentType;->MIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {p0, p1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$ContentType;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    const-string v2, "UTF-8"

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    :goto_0
    const-string v2, "multipart/form-data"

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$ContentType;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "US-ASCII"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isMultipart()Z
    .locals 2

    const-string v0, "multipart/form-data"

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tryUTF8()Lfi/iki/elonen/NanoHTTPD$ContentType;
    .locals 3

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ContentType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object p0
.end method
