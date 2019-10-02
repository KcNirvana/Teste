package io.lindstrom.m3u8.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import javax.annotation.Generated;

/**
 * Builds instances of type {@link Variant Variant}.
 * Initialize attributes and then invoke the {@link #build()} method to create an
 * immutable instance.
 * <p><em>{@code VariantBuilder} is not thread-safe and generally should not be stored in a field or collection,
 * but instead used immediately to create instances.</em>
 */
@SuppressWarnings({"all"})
@Generated({"Immutables.generator", "Variant"})
class VariantBuilder {
  private static final long INIT_BIT_BANDWIDTH = 0x1L;
  private static final long INIT_BIT_URI = 0x2L;
  private long initBits = 0x3L;

  private long bandwidth;
  private Long averageBandwidth;
  private List<String> codecs = new ArrayList<String>();
  private Resolution resolution;
  private Double frameRate;
  private String hdcpLevel;
  private String audio;
  private String video;
  private String subtitles;
  private String closedCaptions;
  private String uri;
  private Integer programId;

  /**
   * Creates a builder for {@link Variant Variant} instances.
   */
  VariantBuilder() {
    if (!(this instanceof Variant.Builder)) {
      throw new UnsupportedOperationException("Use: new Variant.Builder()");
    }
  }

  /**
   * Fill a builder with attribute values from the provided {@code Variant} instance.
   * Regular attribute values will be replaced with those from the given instance.
   * Absent optional values will not replace present values.
   * Collection elements and entries will be added, not replaced.
   * @param instance The instance from which to copy values
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder from(Variant instance) {
    Objects.requireNonNull(instance, "instance");
    bandwidth(instance.bandwidth());
    Optional<Long> averageBandwidthOptional = instance.averageBandwidth();
    if (averageBandwidthOptional.isPresent()) {
      averageBandwidth(averageBandwidthOptional);
    }
    addAllCodecs(instance.codecs());
    Optional<Resolution> resolutionOptional = instance.resolution();
    if (resolutionOptional.isPresent()) {
      resolution(resolutionOptional);
    }
    Optional<Double> frameRateOptional = instance.frameRate();
    if (frameRateOptional.isPresent()) {
      frameRate(frameRateOptional);
    }
    Optional<String> hdcpLevelOptional = instance.hdcpLevel();
    if (hdcpLevelOptional.isPresent()) {
      hdcpLevel(hdcpLevelOptional);
    }
    Optional<String> audioOptional = instance.audio();
    if (audioOptional.isPresent()) {
      audio(audioOptional);
    }
    Optional<String> videoOptional = instance.video();
    if (videoOptional.isPresent()) {
      video(videoOptional);
    }
    Optional<String> subtitlesOptional = instance.subtitles();
    if (subtitlesOptional.isPresent()) {
      subtitles(subtitlesOptional);
    }
    Optional<String> closedCaptionsOptional = instance.closedCaptions();
    if (closedCaptionsOptional.isPresent()) {
      closedCaptions(closedCaptionsOptional);
    }
    uri(instance.uri());
    Optional<Integer> programIdOptional = instance.programId();
    if (programIdOptional.isPresent()) {
      programId(programIdOptional);
    }
    return (Variant.Builder) this;
  }

  /**
   * Initializes the value for the {@link Variant#bandwidth() bandwidth} attribute.
   * @param bandwidth The value for bandwidth 
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder bandwidth(long bandwidth) {
    this.bandwidth = bandwidth;
    initBits &= ~INIT_BIT_BANDWIDTH;
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#averageBandwidth() averageBandwidth} to averageBandwidth.
   * @param averageBandwidth The value for averageBandwidth
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder averageBandwidth(long averageBandwidth) {
    this.averageBandwidth = averageBandwidth;
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#averageBandwidth() averageBandwidth} to averageBandwidth.
   * @param averageBandwidth The value for averageBandwidth
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder averageBandwidth(Optional<Long> averageBandwidth) {
    this.averageBandwidth = averageBandwidth.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Adds one element to {@link Variant#codecs() codecs} list.
   * @param element A codecs element
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder addCodecs(String element) {
    this.codecs.add(Objects.requireNonNull(element, "codecs element"));
    return (Variant.Builder) this;
  }

  /**
   * Adds elements to {@link Variant#codecs() codecs} list.
   * @param elements An array of codecs elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder addCodecs(String... elements) {
    for (String element : elements) {
      this.codecs.add(Objects.requireNonNull(element, "codecs element"));
    }
    return (Variant.Builder) this;
  }

  /**
   * Sets or replaces all elements for {@link Variant#codecs() codecs} list.
   * @param elements An iterable of codecs elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder codecs(Iterable<String> elements) {
    this.codecs.clear();
    return addAllCodecs(elements);
  }

  /**
   * Adds elements to {@link Variant#codecs() codecs} list.
   * @param elements An iterable of codecs elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder addAllCodecs(Iterable<String> elements) {
    for (String element : elements) {
      this.codecs.add(Objects.requireNonNull(element, "codecs element"));
    }
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#resolution() resolution} to resolution.
   * @param resolution The value for resolution
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder resolution(Resolution resolution) {
    this.resolution = Objects.requireNonNull(resolution, "resolution");
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#resolution() resolution} to resolution.
   * @param resolution The value for resolution
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder resolution(Optional<? extends Resolution> resolution) {
    this.resolution = resolution.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#frameRate() frameRate} to frameRate.
   * @param frameRate The value for frameRate
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder frameRate(double frameRate) {
    this.frameRate = frameRate;
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#frameRate() frameRate} to frameRate.
   * @param frameRate The value for frameRate
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder frameRate(Optional<Double> frameRate) {
    this.frameRate = frameRate.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#hdcpLevel() hdcpLevel} to hdcpLevel.
   * @param hdcpLevel The value for hdcpLevel
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder hdcpLevel(String hdcpLevel) {
    this.hdcpLevel = Objects.requireNonNull(hdcpLevel, "hdcpLevel");
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#hdcpLevel() hdcpLevel} to hdcpLevel.
   * @param hdcpLevel The value for hdcpLevel
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder hdcpLevel(Optional<String> hdcpLevel) {
    this.hdcpLevel = hdcpLevel.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#audio() audio} to audio.
   * @param audio The value for audio
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder audio(String audio) {
    this.audio = Objects.requireNonNull(audio, "audio");
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#audio() audio} to audio.
   * @param audio The value for audio
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder audio(Optional<String> audio) {
    this.audio = audio.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#video() video} to video.
   * @param video The value for video
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder video(String video) {
    this.video = Objects.requireNonNull(video, "video");
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#video() video} to video.
   * @param video The value for video
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder video(Optional<String> video) {
    this.video = video.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#subtitles() subtitles} to subtitles.
   * @param subtitles The value for subtitles
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder subtitles(String subtitles) {
    this.subtitles = Objects.requireNonNull(subtitles, "subtitles");
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#subtitles() subtitles} to subtitles.
   * @param subtitles The value for subtitles
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder subtitles(Optional<String> subtitles) {
    this.subtitles = subtitles.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#closedCaptions() closedCaptions} to closedCaptions.
   * @param closedCaptions The value for closedCaptions
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder closedCaptions(String closedCaptions) {
    this.closedCaptions = Objects.requireNonNull(closedCaptions, "closedCaptions");
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#closedCaptions() closedCaptions} to closedCaptions.
   * @param closedCaptions The value for closedCaptions
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder closedCaptions(Optional<String> closedCaptions) {
    this.closedCaptions = closedCaptions.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Initializes the value for the {@link Variant#uri() uri} attribute.
   * @param uri The value for uri 
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder uri(String uri) {
    this.uri = Objects.requireNonNull(uri, "uri");
    initBits &= ~INIT_BIT_URI;
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#programId() programId} to programId.
   * @param programId The value for programId
   * @return {@code this} builder for chained invocation
   */
  public final Variant.Builder programId(int programId) {
    this.programId = programId;
    return (Variant.Builder) this;
  }

  /**
   * Initializes the optional value {@link Variant#programId() programId} to programId.
   * @param programId The value for programId
   * @return {@code this} builder for use in a chained invocation
   */
  public final Variant.Builder programId(Optional<Integer> programId) {
    this.programId = programId.orElse(null);
    return (Variant.Builder) this;
  }

  /**
   * Builds a new {@link Variant Variant}.
   * @return An immutable instance of Variant
   * @throws java.lang.IllegalStateException if any required attributes are missing
   */
  public Variant build() {
    if (initBits != 0) {
      throw new IllegalStateException(formatRequiredAttributesMessage());
    }
    return new VariantBuilder.ImmutableVariant(this);
  }

  private String formatRequiredAttributesMessage() {
    List<String> attributes = new ArrayList<String>();
    if ((initBits & INIT_BIT_BANDWIDTH) != 0) attributes.add("bandwidth");
    if ((initBits & INIT_BIT_URI) != 0) attributes.add("uri");
    return "Cannot build Variant, some of required attributes are not set " + attributes;
  }

  /**
   * Immutable implementation of {@link Variant}.
   * <p>
   * Use the builder to create immutable instances:
   * {@code new Variant.Builder()}.
   */
  private static final class ImmutableVariant implements Variant {
    private final long bandwidth;
    private final Long averageBandwidth;
    private final List<String> codecs;
    private final Resolution resolution;
    private final Double frameRate;
    private final String hdcpLevel;
    private final String audio;
    private final String video;
    private final String subtitles;
    private final String closedCaptions;
    private final String uri;
    private final Integer programId;

    private ImmutableVariant(VariantBuilder builder) {
      this.bandwidth = builder.bandwidth;
      this.averageBandwidth = builder.averageBandwidth;
      this.codecs = createUnmodifiableList(true, builder.codecs);
      this.resolution = builder.resolution;
      this.frameRate = builder.frameRate;
      this.hdcpLevel = builder.hdcpLevel;
      this.audio = builder.audio;
      this.video = builder.video;
      this.subtitles = builder.subtitles;
      this.closedCaptions = builder.closedCaptions;
      this.uri = builder.uri;
      this.programId = builder.programId;
    }

    /**
     * @return The value of the {@code bandwidth} attribute
     */
    @Override
    public long bandwidth() {
      return bandwidth;
    }

    /**
     * @return The value of the {@code averageBandwidth} attribute
     */
    @Override
    public Optional<Long> averageBandwidth() {
      return Optional.ofNullable(averageBandwidth);
    }

    /**
     * @return The value of the {@code codecs} attribute
     */
    @Override
    public List<String> codecs() {
      return codecs;
    }

    /**
     * @return The value of the {@code resolution} attribute
     */
    @Override
    public Optional<Resolution> resolution() {
      return Optional.ofNullable(resolution);
    }

    /**
     * @return The value of the {@code frameRate} attribute
     */
    @Override
    public Optional<Double> frameRate() {
      return Optional.ofNullable(frameRate);
    }

    /**
     * @return The value of the {@code hdcpLevel} attribute
     */
    @Override
    public Optional<String> hdcpLevel() {
      return Optional.ofNullable(hdcpLevel);
    }

    /**
     * @return The value of the {@code audio} attribute
     */
    @Override
    public Optional<String> audio() {
      return Optional.ofNullable(audio);
    }

    /**
     * @return The value of the {@code video} attribute
     */
    @Override
    public Optional<String> video() {
      return Optional.ofNullable(video);
    }

    /**
     * @return The value of the {@code subtitles} attribute
     */
    @Override
    public Optional<String> subtitles() {
      return Optional.ofNullable(subtitles);
    }

    /**
     * @return The value of the {@code closedCaptions} attribute
     */
    @Override
    public Optional<String> closedCaptions() {
      return Optional.ofNullable(closedCaptions);
    }

    /**
     * @return The value of the {@code uri} attribute
     */
    @Override
    public String uri() {
      return uri;
    }

    /**
     * @return The value of the {@code programId} attribute
     */
    @Override
    public Optional<Integer> programId() {
      return Optional.ofNullable(programId);
    }

    /**
     * This instance is equal to all instances of {@code ImmutableVariant} that have equal attribute values.
     * @return {@code true} if {@code this} is equal to {@code another} instance
     */
    @Override
    public boolean equals(Object another) {
      if (this == another) return true;
      return another instanceof VariantBuilder.ImmutableVariant
          && equalTo((VariantBuilder.ImmutableVariant) another);
    }

    private boolean equalTo(VariantBuilder.ImmutableVariant another) {
      return bandwidth == another.bandwidth
          && Objects.equals(averageBandwidth, another.averageBandwidth)
          && codecs.equals(another.codecs)
          && Objects.equals(resolution, another.resolution)
          && Objects.equals(frameRate, another.frameRate)
          && Objects.equals(hdcpLevel, another.hdcpLevel)
          && Objects.equals(audio, another.audio)
          && Objects.equals(video, another.video)
          && Objects.equals(subtitles, another.subtitles)
          && Objects.equals(closedCaptions, another.closedCaptions)
          && uri.equals(another.uri)
          && Objects.equals(programId, another.programId);
    }

    /**
     * Computes a hash code from attributes: {@code bandwidth}, {@code averageBandwidth}, {@code codecs}, {@code resolution}, {@code frameRate}, {@code hdcpLevel}, {@code audio}, {@code video}, {@code subtitles}, {@code closedCaptions}, {@code uri}, {@code programId}.
     * @return hashCode value
     */
    @Override
    public int hashCode() {
      int h = 5381;
      h += (h << 5) + Long.hashCode(bandwidth);
      h += (h << 5) + Objects.hashCode(averageBandwidth);
      h += (h << 5) + codecs.hashCode();
      h += (h << 5) + Objects.hashCode(resolution);
      h += (h << 5) + Objects.hashCode(frameRate);
      h += (h << 5) + Objects.hashCode(hdcpLevel);
      h += (h << 5) + Objects.hashCode(audio);
      h += (h << 5) + Objects.hashCode(video);
      h += (h << 5) + Objects.hashCode(subtitles);
      h += (h << 5) + Objects.hashCode(closedCaptions);
      h += (h << 5) + uri.hashCode();
      h += (h << 5) + Objects.hashCode(programId);
      return h;
    }

    /**
     * Prints the immutable value {@code Variant} with attribute values.
     * @return A string representation of the value
     */
    @Override
    public String toString() {
      StringBuilder builder = new StringBuilder("Variant{");
      builder.append("bandwidth=").append(bandwidth);
      if (averageBandwidth != null) {
        builder.append(", ");
        builder.append("averageBandwidth=").append(averageBandwidth);
      }
      builder.append(", ");
      builder.append("codecs=").append(codecs);
      if (resolution != null) {
        builder.append(", ");
        builder.append("resolution=").append(resolution);
      }
      if (frameRate != null) {
        builder.append(", ");
        builder.append("frameRate=").append(frameRate);
      }
      if (hdcpLevel != null) {
        builder.append(", ");
        builder.append("hdcpLevel=").append(hdcpLevel);
      }
      if (audio != null) {
        builder.append(", ");
        builder.append("audio=").append(audio);
      }
      if (video != null) {
        builder.append(", ");
        builder.append("video=").append(video);
      }
      if (subtitles != null) {
        builder.append(", ");
        builder.append("subtitles=").append(subtitles);
      }
      if (closedCaptions != null) {
        builder.append(", ");
        builder.append("closedCaptions=").append(closedCaptions);
      }
      builder.append(", ");
      builder.append("uri=").append(uri);
      if (programId != null) {
        builder.append(", ");
        builder.append("programId=").append(programId);
      }
      return builder.append("}").toString();
    }
  }

  private static <T> List<T> createSafeList(Iterable<? extends T> iterable, boolean checkNulls, boolean skipNulls) {
    ArrayList<T> list;
    if (iterable instanceof Collection<?>) {
      int size = ((Collection<?>) iterable).size();
      if (size == 0) return Collections.emptyList();
      list = new ArrayList<T>();
    } else {
      list = new ArrayList<T>();
    }
    for (T element : iterable) {
      if (skipNulls && element == null) continue;
      if (checkNulls) Objects.requireNonNull(element, "element");
      list.add(element);
    }
    return list;
  }

  private static <T> List<T> createUnmodifiableList(boolean clone, List<T> list) {
    switch(list.size()) {
    case 0: return Collections.emptyList();
    case 1: return Collections.singletonList(list.get(0));
    default:
      if (clone) {
        return Collections.unmodifiableList(new ArrayList<T>(list));
      } else {
        if (list instanceof ArrayList<?>) {
          ((ArrayList<?>) list).trimToSize();
        }
        return Collections.unmodifiableList(list);
      }
    }
  }
}
