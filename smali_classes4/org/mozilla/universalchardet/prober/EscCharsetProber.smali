.class public Lorg/mozilla/universalchardet/prober/EscCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# static fields
.field private static final hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

.field private static final iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

.field private static final iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

.field private static final iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;


# instance fields
.field private activeSM:I

.field private codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private detectedCharset:Ljava/lang/String;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v2, v2, v0

    aget-byte v3, p1, p2

    invoke-virtual {v2, v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    iget v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    if-gtz v2, :cond_0

    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :goto_2
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1

    :cond_0
    iget v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    iget v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    iget v4, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aput-object v2, v3, v0

    goto :goto_3

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCodingStateMachine()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1
.end method

.method public reset()V
    .locals 2

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    array-length v0, v0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
