.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2


# instance fields
.field public config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected contex:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field protected extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field public fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 5

    const/16 v1, 0x1a

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v2, p2, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iget-char v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    :goto_0
    iput-char v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    iput v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1
    return-void

    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_1
    iget-char v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    :goto_2
    iput-char v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    iput v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2

    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkListResolve(Ljava/util/Collection;)V
    .locals 5

    const/4 v4, 0x0

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_0
.end method

.method protected checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return-void
.end method

.method public close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not close json text, token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    return-void
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 9

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    iget-object v0, v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iget-object v8, v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v3, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_3
    invoke-static {v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$000(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v8, "$"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x0

    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v2, v8, :cond_6

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v8, v8, v2

    iget-object v5, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$100(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v8

    iget-object v5, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_1
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_0
    return-object v4

    :pswitch_2
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, v8, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v8

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_0

    :pswitch_4
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_1

    :pswitch_5
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v4, v1

    goto :goto_0

    :pswitch_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    const/4 v9, 0x1

    :goto_2
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v4, v10

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :pswitch_7
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    new-instance v2, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    :cond_3
    move-object v4, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v11

    :pswitch_8
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :pswitch_9
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_a
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_b
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0x12

    if-eq v11, v12, :cond_4

    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v6, 0x0

    const/16 v10, 0x10

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0x15

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0x16

    if-ne v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0xe

    if-eq v7, v8, :cond_2

    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v1, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_4

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v7, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_3
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v10, :cond_6

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    throw v6

    :cond_4
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_5

    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v8, 0xf

    if-ne v7, v8, :cond_7

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-void

    :cond_7
    :try_start_2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_a

    sget-object v7, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, p0, v8, v9}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v10, :cond_9

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_d

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v11, :cond_b

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_3
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    move-object v5, v6

    :goto_4
    goto :goto_3

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_d
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    goto :goto_2

    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, p0, p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_5
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v15, 0x15

    if-eq v13, v15, :cond_0

    const/16 v15, 0x16

    if-ne v13, v15, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :cond_1
    const/16 v15, 0xe

    if-eq v13, v15, :cond_2

    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "syntax error, expect [, actual "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", pos "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v5, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v15, 0x22

    if-eq v3, v15, :cond_b

    const/16 v15, 0x5d

    if-ne v3, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_9

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_8

    const/16 v15, 0x1a

    :goto_1
    move-object/from16 v0, v16

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v15, 0x2c

    if-ne v3, v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v8, v0, :cond_d

    const/16 v3, 0x1a

    :goto_5
    iput-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_6
    const/16 v15, 0x22

    if-ne v3, v15, :cond_e

    :cond_7
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0xc

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v15

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_a
    throw v15

    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-nez v15, :cond_c

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_8
    const/16 v15, 0x10

    if-ne v13, v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_8

    :cond_10
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_12

    const/16 v15, 0x1a

    :goto_9
    move-object/from16 v0, v16

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_12
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_7

    :cond_14
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v14

    :goto_a
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v15, 0x22

    if-ne v3, v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_a

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v14

    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v14

    goto :goto_b

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_18

    new-instance v9, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v15

    if-eqz v15, :cond_17

    iget-object v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    :goto_c
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto/16 :goto_a

    :cond_17
    move-object v14, v12

    goto :goto_c

    :cond_18
    move-object v14, v12

    goto/16 :goto_a

    :pswitch_4
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    :pswitch_5
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_19

    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v11, v15}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_a

    :cond_19
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_d

    :pswitch_7
    new-instance v10, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v14, v10

    goto/16 :goto_a

    :pswitch_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    :pswitch_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :pswitch_b
    :try_start_4
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v16, "unclosed jsonArray"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1a
    const/16 v15, 0x30

    if-lt v3, v15, :cond_1b

    const/16 v15, 0x39

    if-gt v3, v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_6

    :cond_1b
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_1c

    const/16 v15, 0x1a

    :goto_e
    move-object/from16 v0, v16

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 12

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_1

    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    array-length v9, p1

    new-array v5, v9, [Ljava/lang/Object;

    array-length v9, p1

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_2

    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v3, 0x0

    :goto_1
    array-length v9, p1

    if-ge v3, v9, :cond_4

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_5

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_2
    aput-object v7, v5, v3

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_10

    :cond_4
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_13

    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    aget-object v6, p1, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v9, :cond_6

    const-class v9, Ljava/lang/Integer;

    if-ne v6, v9, :cond_8

    :cond_6
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v7, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_8
    const-class v9, Ljava/lang/String;

    if-ne v6, v9, :cond_a

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v7, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_2

    :cond_a
    const/4 v4, 0x0

    const/4 v1, 0x0

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_b

    instance-of v9, v6, Ljava/lang/Class;

    if-eqz v9, :cond_b

    move-object v0, v6

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    :cond_b
    if-eqz v4, :cond_f

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_f

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_d

    :goto_3
    const/4 v9, 0x0

    invoke-interface {v2, p0, v6, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x10

    if-ne v9, v10, :cond_c

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    :cond_c
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_e

    :cond_d
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v8, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_2

    :cond_e
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_f
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    const/4 v9, 0x0

    invoke-interface {v2, p0, v6, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_2

    :cond_10
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_11

    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_11
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_12

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_12
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    :cond_13
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object v9, p1

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v9, v1

    if-eq v9, v12, :cond_1

    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    aget-object v0, v1, v11

    instance-of v9, v0, Ljava/lang/Class;

    if-eqz v9, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    instance-of v9, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_5

    move-object v8, v0

    check-cast v8, Ljava/lang/reflect/WildcardType;

    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v7, v9, v11

    const-class v9, Ljava/lang/Object;

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {p0, v7, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    :cond_5
    instance-of v9, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_7

    move-object v6, v0

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v9, v4

    if-eq v9, v12, :cond_6

    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    aget-object v3, v4, v11

    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {p0, v3, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_7
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    move-object v5, v0

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_8
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TODO : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    return-object v1

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    const-class v4, [B

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    :cond_1
    const-class v4, [C

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    throw v2

    :catch_1
    move-exception v2

    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v44, v0

    const/16 v47, 0x8

    move/from16 v0, v44

    move/from16 v1, v47

    if-ne v0, v1, :cond_1

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/16 v47, 0xc

    move/from16 v0, v44

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    const/16 v47, 0x10

    move/from16 v0, v44

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, expect {, actual "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v44 .. v44}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, ", "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v47, v0

    if-eqz v47, :cond_5

    move-object/from16 v27, p1

    check-cast v27, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v20

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v47, v0

    sget-object v48, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v48, v0

    and-int v47, v47, v48

    if-eqz v47, :cond_6

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v29

    iget-boolean v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    const/16 v40, 0x0

    :cond_3
    :goto_3
    :try_start_0
    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x22

    move/from16 v0, v47

    if-eq v5, v0, :cond_4

    const/16 v47, 0x7d

    move/from16 v0, v47

    if-eq v5, v0, :cond_4

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_4
    :goto_4
    const/16 v47, 0x2c

    move/from16 v0, v47

    if-ne v5, v0, :cond_7

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    :cond_5
    const/16 v23, 0x0

    move-object/from16 v20, p1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    const/16 v24, 0x0

    const/16 v47, 0x22

    move/from16 v0, v47

    if-ne v5, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v47, v0

    const/16 v48, 0x22

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x3a

    move/from16 v0, v47

    if-eq v5, v0, :cond_61

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x3a

    move/from16 v0, v47

    if-eq v5, v0, :cond_61

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "expect \':\' at "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, ", name "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v47

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_8
    throw v47

    :cond_9
    const/16 v47, 0x7d

    move/from16 v0, v47

    if-ne v5, v0, :cond_b

    :try_start_1
    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v47, v0

    add-int/lit8 v19, v47, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v47, v0

    move/from16 v0, v19

    move/from16 v1, v47

    if-lt v0, v1, :cond_a

    const/16 v47, 0x1a

    :goto_5
    move/from16 v0, v47

    move-object/from16 v1, v29

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v47, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_a
    :try_start_2
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    goto :goto_5

    :cond_b
    const/16 v47, 0x27

    move/from16 v0, v47

    if-ne v5, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v47, v0

    const/16 v48, 0x27

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v47, v0

    const/16 v48, 0x3a

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_c

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    :cond_c
    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x3a

    move/from16 v0, v47

    if-eq v5, v0, :cond_61

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "expect \':\' at "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_d
    const/16 v47, 0x1a

    move/from16 v0, v47

    if-ne v5, v0, :cond_e

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_e
    const/16 v47, 0x2c

    move/from16 v0, v47

    if-ne v5, v0, :cond_f

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_f
    const/16 v47, 0x30

    move/from16 v0, v47

    if-lt v5, v0, :cond_10

    const/16 v47, 0x39

    move/from16 v0, v47

    if-le v5, v0, :cond_11

    :cond_10
    const/16 v47, 0x2d

    move/from16 v0, v47

    if-ne v5, v0, :cond_14

    :cond_11
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v47, v0

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_13

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v28

    :goto_6
    if-eqz v23, :cond_12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v28

    :cond_12
    :try_start_4
    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x3a

    move/from16 v0, v47

    if-eq v5, v0, :cond_62

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "parse number key error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_13
    const/16 v47, 0x1

    :try_start_5
    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v28

    goto :goto_6

    :catch_0
    move-exception v15

    :try_start_6
    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "parse number key error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_14
    const/16 v47, 0x7b

    move/from16 v0, v47

    if-eq v5, v0, :cond_15

    const/16 v47, 0x5b

    move/from16 v0, v47

    if-ne v5, v0, :cond_17

    :cond_15
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v28

    const/16 v24, 0x1

    move-object/from16 v47, v28

    :goto_7
    if-nez v24, :cond_1a

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v48, v0

    add-int/lit8 v19, v48, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v48, v0

    move/from16 v0, v19

    move/from16 v1, v48

    if-lt v0, v1, :cond_19

    const/16 v5, 0x1a

    :goto_8
    move-object/from16 v0, v29

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    const/16 v48, 0x20

    move/from16 v0, v48

    if-gt v5, v0, :cond_1b

    const/16 v48, 0x20

    move/from16 v0, v48

    if-eq v5, v0, :cond_16

    const/16 v48, 0xa

    move/from16 v0, v48

    if-eq v5, v0, :cond_16

    const/16 v48, 0xd

    move/from16 v0, v48

    if-eq v5, v0, :cond_16

    const/16 v48, 0x9

    move/from16 v0, v48

    if-eq v5, v0, :cond_16

    const/16 v48, 0xc

    move/from16 v0, v48

    if-eq v5, v0, :cond_16

    const/16 v48, 0x8

    move/from16 v0, v48

    if-ne v5, v0, :cond_1b

    :cond_16
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v47, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x3a

    move/from16 v0, v47

    if-eq v5, v0, :cond_18

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "expect \':\' at "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, ", actual "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_18
    if-eqz v23, :cond_61

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v47, v28

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_1b
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const-string/jumbo v48, "@type"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_27

    sget-object v48, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v48

    if-nez v48, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v47, v0

    const/16 v48, 0x22

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1c

    const-string/jumbo v47, "@type"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1c
    const/16 v47, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v47, v0

    const/16 v48, 0xd

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_23

    const/16 v47, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v22, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    instance-of v0, v10, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move/from16 v47, v0

    if-eqz v47, :cond_1e

    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :cond_1d
    :goto_a
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_1e

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    check-cast v0, Ljava/util/Map$Entry;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    instance-of v0, v14, Ljava/lang/String;

    move/from16 v48, v0

    if-eqz v48, :cond_1d

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v17

    if-eqz v17, :cond_1d

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v12

    :try_start_8
    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v48, "create instance error"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v47
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1e
    if-nez v22, :cond_1f

    :try_start_9
    const-class v47, Ljava/lang/Cloneable;

    move-object/from16 v0, v47

    if-ne v6, v0, :cond_21

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_1f
    :goto_b
    if-nez v11, :cond_20

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_20
    move-object/from16 p1, v22

    goto/16 :goto_0

    :cond_21
    :try_start_a
    const-string/jumbo v47, "java.util.Collections$EmptyMap"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_22

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v22

    goto :goto_b

    :cond_22
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v22

    goto :goto_b

    :cond_23
    const/16 v47, 0x2

    :try_start_b
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v47, v0

    if-eqz v47, :cond_24

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v47, v0

    if-nez v47, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    :cond_24
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v47

    if-lez v47, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-static {v0, v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v11, :cond_25

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_25
    move-object/from16 p1, v31

    goto/16 :goto_0

    :cond_26
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v6, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object p1

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_27
    :try_start_d
    const-string/jumbo v48, "$ref"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_33

    if-eqz v7, :cond_33

    sget-object v48, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v48

    if-nez v48, :cond_33

    const/16 v47, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v47, v0

    const/16 v48, 0x4

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_32

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v36

    const/16 v47, 0xd

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v37, 0x0

    const-string/jumbo v47, "@"

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v47, v0

    if-nez v47, :cond_28

    move-object/from16 v0, v43

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v47, v0

    if-eqz v47, :cond_2a

    :cond_28
    move-object/from16 v37, v43

    :cond_29
    :goto_c
    move-object/from16 p1, v37

    :goto_d
    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v47, v0

    const/16 v48, 0xd

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_31

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_2a
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v47, v0

    if-eqz v47, :cond_29

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v37, v0

    goto :goto_c

    :cond_2b
    const-string/jumbo v47, ".."

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_2d

    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v47, v0

    if-eqz v47, :cond_2c

    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 p1, v37

    goto :goto_d

    :cond_2c
    new-instance v47, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-direct {v0, v7, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move-object/from16 p1, v37

    goto :goto_d

    :cond_2d
    const-string/jumbo v47, "$"

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_30

    move-object/from16 v39, v7

    :goto_e
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v47, v0

    if-eqz v47, :cond_2e

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v39, v0

    goto :goto_e

    :cond_2e
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v47, v0

    if-eqz v47, :cond_2f

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v37, v0

    :goto_f
    move-object/from16 p1, v37

    goto/16 :goto_d

    :cond_2f
    new-instance v47, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_f

    :cond_30
    new-instance v47, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-direct {v0, v7, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move-object/from16 p1, v37

    goto/16 :goto_d

    :cond_31
    const/16 v47, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_32
    :try_start_e
    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "illegal ref, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_33
    if-nez v11, :cond_35

    if-nez v40, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v8

    if-nez v7, :cond_34

    move-object v7, v8

    :cond_34
    const/16 v40, 0x1

    :cond_35
    const/16 v48, 0x22

    move/from16 v0, v48

    if-ne v5, v0, :cond_3b

    const/16 v48, 0x22

    move-object/from16 v0, v29

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v46, v41

    if-eqz v4, :cond_37

    new-instance v25, Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/16 v48, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v48

    if-eqz v48, :cond_36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v46

    :cond_36
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    :cond_37
    if-eqz v20, :cond_3a

    move-object/from16 v0, v20

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_10
    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x2c

    move/from16 v0, v47

    if-eq v5, v0, :cond_39

    const/16 v47, 0x7d

    move/from16 v0, v47

    if-eq v5, v0, :cond_39

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    move-object/from16 v0, v29

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_39
    const/16 v47, 0x2c

    move/from16 v0, v47

    if-ne v5, v0, :cond_57

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v47, v0

    add-int/lit8 v19, v47, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v47, v0

    move/from16 v0, v19

    move/from16 v1, v47

    if-lt v0, v1, :cond_56

    const/16 v47, 0x1a

    :goto_11
    move/from16 v0, v47

    move-object/from16 v1, v29

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_3

    :cond_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_3b
    const/16 v48, 0x30

    move/from16 v0, v48

    if-lt v5, v0, :cond_3c

    const/16 v48, 0x39

    move/from16 v0, v48

    if-le v5, v0, :cond_3d

    :cond_3c
    const/16 v48, 0x2d

    move/from16 v0, v48

    if-ne v5, v0, :cond_3e

    :cond_3d
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumberValue()Ljava/lang/Number;

    move-result-object v46

    move-object/from16 v0, v20

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_3e
    const/16 v48, 0x5b

    move/from16 v0, v48

    if-ne v5, v0, :cond_44

    const/16 v48, 0xe

    move/from16 v0, v48

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v48, v0

    add-int/lit8 v19, v48, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v48, v0

    move/from16 v0, v19

    move/from16 v1, v48

    if-lt v0, v1, :cond_40

    const/16 v48, 0x1a

    :goto_12
    move/from16 v0, v48

    move-object/from16 v1, v29

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_41

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    const-class v49, Ljava/lang/Integer;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_41

    const/16 v35, 0x1

    :goto_13
    if-nez v35, :cond_3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    :cond_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    new-instance v46, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v0, v46

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    if-eqz v20, :cond_42

    move-object/from16 v0, v20

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v44, v0

    const/16 v47, 0xd

    move/from16 v0, v44

    move/from16 v1, v47

    if-ne v0, v1, :cond_43

    const/16 v47, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_40
    :try_start_f
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v48

    goto :goto_12

    :cond_41
    const/16 v35, 0x0

    goto :goto_13

    :cond_42
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_43
    const/16 v47, 0x10

    move/from16 v0, v44

    move/from16 v1, v47

    if-eq v0, v1, :cond_3

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_44
    const/16 v48, 0x7b

    move/from16 v0, v48

    if-ne v5, v0, :cond_51

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v48, v0

    add-int/lit8 v19, v48, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v48, v0

    move/from16 v0, v19

    move/from16 v1, v48

    if-lt v0, v1, :cond_4c

    const/16 v48, 0x1a

    :goto_15
    move/from16 v0, v48

    move-object/from16 v1, v29

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v48, 0xc

    move/from16 v0, v48

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v35, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v48, v0

    sget-object v49, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v49, v0

    and-int v48, v48, v49

    if-eqz v48, :cond_4d

    new-instance v21, Lcom/alibaba/fastjson/JSONObject;

    new-instance v48, Ljava/util/LinkedHashMap;

    invoke-direct/range {v48 .. v48}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_16
    const/4 v9, 0x0

    if-nez v11, :cond_45

    if-nez v35, :cond_45

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v47

    invoke-virtual {v0, v7, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v9

    :cond_45
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-object/from16 v48, v0

    if-eqz v48, :cond_46

    if-eqz v47, :cond_4e

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v18

    if-eqz v18, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    const/16 v34, 0x1

    :cond_46
    if-nez v34, :cond_47

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    :cond_47
    if-eqz v9, :cond_48

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_48

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v48, v0

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_49

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_49
    if-eqz v20, :cond_4f

    move-object/from16 v0, v20

    move-object/from16 v1, v47

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    if-eqz v35, :cond_4a

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v47

    invoke-virtual {v0, v7, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_4a
    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v44, v0

    const/16 v47, 0xd

    move/from16 v0, v44

    move/from16 v1, v47

    if-ne v0, v1, :cond_50

    const/16 v47, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-nez v11, :cond_4b

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_4b
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_4c
    :try_start_10
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v48

    goto/16 :goto_15

    :cond_4d
    new-instance v21, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto/16 :goto_16

    :cond_4e
    const/16 v38, 0x0

    goto/16 :goto_17

    :cond_4f
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_50
    const/16 v47, 0x10

    move/from16 v0, v44

    move/from16 v1, v47

    if-eq v0, v1, :cond_3

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_51
    const/16 v48, 0x74

    move/from16 v0, v48

    if-ne v5, v0, :cond_52

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v48, v0

    const-string/jumbo v49, "true"

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v50, v0

    invoke-virtual/range {v48 .. v50}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v48

    if-eqz v48, :cond_38

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, 0x3

    move/from16 v0, v48

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    sget-object v48, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :cond_52
    const/16 v48, 0x66

    move/from16 v0, v48

    if-ne v5, v0, :cond_53

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v48, v0

    const-string/jumbo v49, "false"

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v50, v0

    invoke-virtual/range {v48 .. v50}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v48

    if-eqz v48, :cond_38

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, 0x4

    move/from16 v0, v48

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    sget-object v48, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :cond_53
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v46

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    const-class v49, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_54

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v47

    :cond_54
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v47, v0

    const/16 v48, 0xd

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_55

    const/16 v47, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_55
    :try_start_11
    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v47, v0

    const/16 v48, 0x10

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_3

    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47

    :cond_56
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    goto/16 :goto_11

    :cond_57
    const/16 v47, 0x7d

    move/from16 v0, v47

    if-ne v5, v0, :cond_60

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v47, v0

    add-int/lit8 v19, v47, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v47, v0

    move/from16 v0, v19

    move/from16 v1, v47

    if-lt v0, v1, :cond_59

    const/16 v5, 0x1a

    :goto_19
    move-object/from16 v0, v29

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v47, 0x2c

    move/from16 v0, v47

    if-ne v5, v0, :cond_5b

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v47, v0

    add-int/lit8 v19, v47, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v47, v0

    move/from16 v0, v19

    move/from16 v1, v47

    if-lt v0, v1, :cond_5a

    const/16 v47, 0x1a

    :goto_1a
    move/from16 v0, v47

    move-object/from16 v1, v29

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0x10

    move/from16 v0, v47

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1b
    if-nez v11, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_58
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    :cond_59
    :try_start_12
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_19

    :cond_5a
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    goto :goto_1a

    :cond_5b
    const/16 v47, 0x7d

    move/from16 v0, v47

    if-ne v5, v0, :cond_5d

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v47, v0

    add-int/lit8 v19, v47, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v47, v0

    move/from16 v0, v19

    move/from16 v1, v47

    if-lt v0, v1, :cond_5c

    const/16 v47, 0x1a

    :goto_1c
    move/from16 v0, v47

    move-object/from16 v1, v29

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0xd

    move/from16 v0, v47

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1b

    :cond_5c
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    goto :goto_1c

    :cond_5d
    const/16 v47, 0x5d

    move/from16 v0, v47

    if-ne v5, v0, :cond_5f

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v47, v0

    add-int/lit8 v19, v47, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v47, v0

    move/from16 v0, v19

    move/from16 v1, v47

    if-lt v0, v1, :cond_5e

    const/16 v47, 0x1a

    :goto_1d
    move/from16 v0, v47

    move-object/from16 v1, v29

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v47, 0xf

    move/from16 v0, v47

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1b

    :cond_5e
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    goto :goto_1d

    :cond_5f
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_1b

    :cond_60
    new-instance v47, Lcom/alibaba/fastjson/JSONException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "syntax error, "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v47
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_61
    move-object/from16 v47, v28

    goto/16 :goto_7

    :cond_62
    move-object/from16 v47, v28

    goto/16 :goto_7
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    instance-of v10, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v10, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    :cond_0
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xc

    if-eq v9, v10, :cond_2

    const/16 v10, 0x10

    if-eq v9, v10, :cond_2

    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "syntax error, expect {, actual "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0x10

    if-ne v10, v11, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_0
    return-void

    :cond_3
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_6

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-nez v10, :cond_5

    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setter not found, class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    :cond_6
    iget-object v10, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v10, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_7

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    sget-object v10, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    :cond_7
    const-class v10, Ljava/lang/String;

    if-ne v3, v10, :cond_8

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_8
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    sget-object v10, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const/4 v10, 0x0

    invoke-interface {v7, p0, v5, v10}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method public parseString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x10

    const/16 v4, 0x1a

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_6

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v6, :cond_0

    :goto_0
    iput-char v4, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1
    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v6, :cond_2

    :goto_2
    iput-char v4, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v5, 0xf

    iput v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v6, :cond_4

    :goto_3
    iput-char v4, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v5, 0xd

    iput v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected popContext()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    return-void
.end method

.method protected setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v3, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v3, :cond_2

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    new-array v1, v2, [Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_1
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method
