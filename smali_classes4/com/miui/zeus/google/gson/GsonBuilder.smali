.class public final Lcom/miui/zeus/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/zeus/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/zeus/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/miui/zeus/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/zeus/google/gson/internal/Excluder;->DEFAULT:Lcom/miui/zeus/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    sget-object v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    sget-object v0, Lcom/miui/zeus/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/miui/zeus/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->dateStyle:I

    iput v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->timeStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->escapeHtmlChars:Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/miui/zeus/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/miui/zeus/google/gson/DefaultDateTypeAdapter;

    invoke-direct {p2, p1}, Lcom/miui/zeus/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    new-instance p1, Lcom/miui/zeus/google/gson/DefaultDateTypeAdapter;

    invoke-direct {p1, p2, p3}, Lcom/miui/zeus/google/gson/DefaultDateTypeAdapter;-><init>(II)V

    :goto_0
    const-class p2, Ljava/util/Date;

    invoke-static {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->newFactory(Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Timestamp;

    invoke-static {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->newFactory(Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Date;

    invoke-static {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->newFactory(Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/miui/zeus/google/gson/ExclusionStrategy;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/zeus/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/miui/zeus/google/gson/ExclusionStrategy;ZZ)Lcom/miui/zeus/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/miui/zeus/google/gson/ExclusionStrategy;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/zeus/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/miui/zeus/google/gson/ExclusionStrategy;ZZ)Lcom/miui/zeus/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    return-object p0
.end method

.method public create()Lcom/miui/zeus/google/gson/Gson;
    .locals 13

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/miui/zeus/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    new-instance v12, Lcom/miui/zeus/google/gson/Gson;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v10, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/miui/zeus/google/gson/Gson;-><init>(Lcom/miui/zeus/google/gson/internal/Excluder;Lcom/miui/zeus/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/miui/zeus/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v12
.end method

.method public disableHtmlEscaping()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/miui/zeus/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/miui/zeus/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/internal/Excluder;->withModifiers([I)Lcom/miui/zeus/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/miui/zeus/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/miui/zeus/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 3

    instance-of v0, p2, Lcom/miui/zeus/google/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/miui/zeus/google/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/miui/zeus/google/gson/InstanceCreator;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/miui/zeus/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v1, p2, Lcom/miui/zeus/google/gson/InstanceCreator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/miui/zeus/google/gson/InstanceCreator;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/miui/zeus/google/gson/JsonDeserializer;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object p1

    check-cast p2, Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/miui/zeus/google/gson/reflect/TypeToken;Lcom/miui/zeus/google/gson/TypeAdapter;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/miui/zeus/google/gson/TypeAdapterFactory;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/miui/zeus/google/gson/GsonBuilder;"
        }
    .end annotation

    instance-of v0, p2, Lcom/miui/zeus/google/gson/JsonSerializer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v2, p2, Lcom/miui/zeus/google/gson/JsonDeserializer;

    if-nez v2, :cond_1

    instance-of v2, p2, Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/miui/zeus/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v2, p2, Lcom/miui/zeus/google/gson/JsonDeserializer;

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    instance-of v0, p2, Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/miui/zeus/google/gson/TypeAdapter;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public serializeNulls()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public setDateFormat(I)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->dateStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->timeStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/miui/zeus/google/gson/ExclusionStrategy;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lcom/miui/zeus/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/miui/zeus/google/gson/ExclusionStrategy;ZZ)Lcom/miui/zeus/google/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/miui/zeus/google/gson/FieldNamingPolicy;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/miui/zeus/google/gson/FieldNamingStrategy;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/miui/zeus/google/gson/LongSerializationPolicy;)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public setPrettyPrinting()Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public setVersion(D)Lcom/miui/zeus/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/internal/Excluder;->withVersion(D)Lcom/miui/zeus/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/google/gson/GsonBuilder;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    return-object p0
.end method
