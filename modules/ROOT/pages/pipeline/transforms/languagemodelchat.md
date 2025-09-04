<div id="header">

# <span class="image image-doc-icon">![Language Model Chat transform Icon](../assets/images/transforms/icons/languagemodelchat.svg)</span> Language Model Chat

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The Language Model Chat transform, using LangChain4j, enables seamless interaction with a variety of language models endpoints, including OpenAI, Anthropic, Hugging Face, Mistral, and Ollama. This transform provides a unified interface, allowing to integrate and configure different models effortlessly within the same pipeline.</p>
</div>
<div class="paragraph">
<p>Additionally, the transform supports the application of some prompt engineering techniques to refine model interactions and achieve more contextually relevant responses. See <code>Basic Prompt Engineering Techniques</code> below for some examples.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## OPTIONS

<div class="sectionbody">

<div class="sect2">

### Common Parameters

<div class="paragraph">

The following parameters are applicable to all language model selections.

</div>

| Option                      | Description                                                                                                                                                                                                                                                                                                                                                                                                          |
| --------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform Name              | Name of the transform. Must be unique within a single pipeline.                                                                                                                                                                                                                                                                                                                                                      |
| Input JSON Chat             | When enabled, uses the chat completion JSON format (system, assistant, user messages). When disabled, treats the input as plain text. See "Chat Completion" section for more details.                                                                                                                                                                                                                                |
| Output JSON Chat            | When enabled, returns the response in chat completion JSON format. When disabled, returns the response as plain text. See "Chat Completion" section for more details.                                                                                                                                                                                                                                                |
| Input field name            | The name of the field holding the input text/prompt                                                                                                                                                                                                                                                                                                                                                                  |
| Output field name prefix    | A prefix applied to all output field names.                                                                                                                                                                                                                                                                                                                                                                          |
| Identifier value (optional) | An optional identifier to label the output records; if left blank, the output will default to the model’s name.                                                                                                                                                                                                                                                                                                      |
| Parallelism                 | The number of parallel threads used for API requests. **WARNING: Be mindful of endpoint capacity and associated costs.** It is advisable to enable `Mock` mode or set parallelism to 1 during testing and development. Once testing is complete, gradually increase the parallelism to assess consumption costs and the provider’s capacity to manage multiple threads, including rate limits and other constraints. |
| Mock (simulate)             | Enables a test mode that simulates responses without performing real API calls.                                                                                                                                                                                                                                                                                                                                      |
| Mock Output Value           | A predefined response returned in simulation mode, used when real API calls are skipped.                                                                                                                                                                                                                                                                                                                             |
| Model API                   | Defines the API used for communication with the endpoint (e.g., via OpenAI, Anthropic, Ollama, Hugging Face, Mistral). **Note:** The Open AI API option can be used with any Open AI compatible endpoint/server. For example, vLLM (Kwon et al., 2023).                                                                                                                                                              |

</div>

<div class="sect2">

### Model-Specific Options

<div class="paragraph">

Below is a table detailing parameters specific to individual language model APIs that are currently supported with the Language Model Chat transform plugin.

</div>

| Option                  | OpenAI | Anthropic | Hugging Face | Mistral | Ollama |
| ----------------------- | ------ | --------- | ------------ | ------- | ------ |
| API/Endpoint URL        | ✅      | ✅         | ✅            | ✅       | ✅      |
| Temperature             | ✅      | ✅         | ✅            | ✅       | ✅      |
| Max New Tokens          | ✅      | ✅         | ✅            | ✅       | ✅      |
| Timeout                 | ✅      | ✅         | ✅            | ✅       | ✅      |
| API Key/AccessToken     | ✅      | ✅         | ✅            | ✅       | ❌      |
| Model Name              | ✅      | ✅         | ❌            | ✅       | ✅      |
| Top P                   | ✅      | ✅         | ❌            | ✅       | ✅      |
| Max Retries             | ✅      | ✅         | ❌            | ✅       | ✅      |
| Response Format         | ✅      | ❌         | ❌            | ✅       | ✅      |
| Seed                    | ✅      | ❌         | ❌            | ✅       | ✅      |
| Log Requests            | ✅      | ✅         | ❌            | ✅       | ❌      |
| Log Responses           | ✅      | ✅         | ❌            | ✅       | ❌      |
| Top K                   | ❌      | ✅         | ❌            | ❌       | ✅      |
| Presence/Repeat Penalty | ✅      | ❌         | ❌            | ❌       | ✅      |
| Organisation            | ✅      | ❌         | ❌            | ❌       | ❌      |
| Frequency Penalty       | ✅      | ❌         | ❌            | ❌       | ❌      |
| Safe Prompt             | ❌      | ❌         | ❌            | ✅       | ❌      |
| User                    | ✅      | ❌         | ❌            | ❌       | ❌      |
| Return Full Text        | ❌      | ❌         | ✅            | ❌       | ❌      |
| Wait for Model          | ❌      | ❌         | ✅            | ❌       | ❌      |
| Use Proxy               | ✅      | ❌         | ❌            | ❌       | ❌      |
| Context Window Size     | ❌      | ❌         | ❌            | ❌       | ✅      |

| Option                   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| API/Endpoint URL         | Specifies the identifier (e.g., URL, model ID, or image ID) used to access and interact with models provided by services like OpenAI, Anthropic, Mistral, Ollama, or Hugging Face.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Temperature              | Controls the randomness of the output: high values lead to more diverse text (creative/inventive), while low values produce more focused and deterministic responses. The value typically ranges between 0 and 1 but can exceed this range depending on the model. Note: Unless intentional, it is generally best to adjust only one parameter; either temperature or Top-P/K, rather than multiple simultaneously.                                                                                                                                                                                                                                                                                                               |
| Max New Tokens           | Sets a limit on how many tokens the model may generate in one response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Context Window Size      | Specifies how much input tokens the model can consider at once.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Timeout                  | Determines how long to wait for a response before giving up.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| API Key/AccessToken      | Unique access value used to authenticate and authorise access to the endpoint service.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Model Name               | Identifies which specific model to use.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Top P                    | Also known as nucleus sampling (Holtzman et al., 2019), controls the diversity of output by limiting the model’s choices to a dynamic subset of the vocabulary. For example, 0.2 means only the tokens comprising the top 20% probability mass are considered. Top-p and temperature both influence the randomness and diversity of the model’s output but operate differently. Temperature scales the probabilities of all tokens while top-p limits token selection to a subset of options whose cumulative probability meets a threshold. Note: Unless intentional, it is generally best to adjust only one parameter; either temperature or Top-P/K, rather than multiple simultaneously.                                     |
| Max Retries              | The maximum number of retry attempts for failed API requests.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Response Format          | Defines the structure used for the model’s responses. Note: While some APIs support this option, not all models are compatible with it. Additionally, the API may require explicitly instructing the model to produce JSON to ensure proper functionality.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Seed                     | Attempts to sample deterministically, ensuring consistent results for repeated requests with the same seed, prompt, and parameters.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Top K                    | Controls the breadth of possible answers by limiting the number of tokens considered. Unlike Top P, which selects tokens until their cumulative probability meets or exceeds ***p***, this parameter restricts the selection to a fixed number of tokens defined by ***k***. Note: Unless intentional, it is generally best to adjust only one parameter; either temperature or Top-P/K, rather than multiple simultaneously.                                                                                                                                                                                                                                                                                                     |
| Repeat/Frequency Penalty | This setting adjusts how the model evaluates token frequency in the generated text, encouraging the model to use less/more repetitive language. The penalty can range from -2.0 to 2.0, depending on the endpoint model. Positive values discourage repetition by penalising frequently used tokens, while negative values can increase repetition by favouring them. Reasonable values for the frequency penalty are typically between 0.1 and 1.0.                                                                                                                                                                                                                                                                              |
| Presence Penalty         | This setting determines how the model evaluates new tokens, aiming to discourage reuse of previously generated tokens. The penalty ranges from -2.0 to 2.0, depending on the endpoint model. Positive values penalise tokens that have already appeared in the text, encouraging the model to explore new directions. Unlike the frequency penalty, which scales proportionally based on how often a token is used, the presence penalty applies a one-time additive penalty to tokens that have appeared at least once. This means all repeated tokens are penalised equally, regardless of whether they appear twice, five times, or ten times. Reasonable values for the presence penalty typically range between 0.1 and 1.0. |
| Organisation             | The organisation ID associated with the API key, for account and billing purposes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Safe Prompt              | Provides a baseline prompt to guide the model towards generating safe outputs. For example, by prepending your messages with a system prompt such as: `Always assist with care, respect, and truth. Respond with utmost utility yet securely. Avoid harmful, unethical, prejudiced, or negative content. Ensure replies promote fairness and positivity`.                                                                                                                                                                                                                                                                                                                                                                         |
| User                     | A unique identifier for the end-user, used by the endpoint provider to monitor activity and detect potential abuse.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Return Full Text         | Ensures the entire generated text is returned without truncation.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Wait for Model           | Delays response until the model is ready. If the model is cold and needs loading, this avoids repeated requests by waiting for it to become available.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Use Proxy                | Routes requests through a proxy server.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Log Requests             | Used for debugging requests.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Log Responses            | Used for debugging responses.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

</div>

</div>

</div>

<div class="sect1">

## ADDITIONAL INFORMATION

<div class="sectionbody">

<div class="sect2">

### Token

<div class="paragraph">

A token represents a unit of text, such as a word, subword, or character, depending on the tokenisation method used during model development. The size of a token varies across models, but a common estimate for English is approximately 4 tokens per 3 words. For more precise calculations, it is important to consider the specific tokenisation method employed by the model, such as Byte Pair Encoding (BPE) or WordPiece. There are online tools that provide convenient calculators to determine token counts based on specific tokenisers and input text. Additionally, frameworks like Hugging Face allow users to download tokenisers that can be used locally to calculate token counts.

</div>

</div>

<div class="sect2">

### Chat Completion / Prompting

<div class="paragraph">

Chat completion refers to the JSON structure used to design and control the flow of interactions in a conversational AI system (the model) via an API. This structure defines role-based communication (e.g., "system," "user," "assistant") and shapes the assistant’s behaviour, enabling it to capture user intent, extend text in response to prompts, and generate relevant content even for tasks the model hasn’t been specifically fine-tuned for.

</div>

<div class="paragraph">

Other terms related to this concept include prompting, prompt engineering, in-context learning and meta-learning. While these terms might sometimes be used interchangeably, they have distinct technical meanings. Meta-learning refers to the broader framework where a model leverages an inner-loop/outer-loop structure to adapt to new tasks. Within this framework, in-context learning represents the inner loop, where the model performs tasks based on examples provided during inference without any gradient updates. This process can be further specialised into "zero-shot," "one-shot," or "few-shot" learning, depending on the number of examples given at inference (Brown et al., 2020). Prompt engineering is the process of designing the inputs (prompts) used to guide the model’s behaviour effectively, optimising its responses to meet specific objectives.

</div>

<div class="paragraph">

Example:

</div>

<div class="listingblock">

<div class="content">

``` highlight
[
{
  "role" : "system",
  "content" : "Provides instructions, context, or guidelines to shape the assistant's behaviour and set the overall tone or purpose of the interaction."
}, {
  "role" : "user",
  "content" : "Represents the individual interacting with the system, providing queries, requests, or instructions to guide the assistant’s responses."
}, {
  "role" : "assistant",
  "content" : "Responds to the user’s input by generating outputs based on the system's instructions and the user's messages."
}
]
```

</div>

</div>

</div>

<div class="sect2">

### Basic Prompt Engineering Techniques

<div class="ulist">

  - **Zero-Shot:** The model generates output based solely on the given prompt and its pre-existing knowledge, with no examples provided to guide its response (Brown et al., 2020).

  - **One/Few-Shot:** A small set of examples (one or more) are provided within the prompt to help the model generalise to new, unseen inputs (Brown et al., 2020).

  - **Chain-of-Thought:** The model is guided through a logical, step-by-step reasoning process, enabling it to break down complex problems and improve its ability to reach more accurate conclusions (Wei et al., 2022). This method is particularly effective for multistep reasoning tasks. Variants include Zero-Shot and Few-Shot Chain-of-Thought (Kojima et al., 2023).

  - **Self-Consistency:** The model generates multiple diverse reasoning paths for the same prompt by introducing variability through techniques like adjusting the temperature or applying nucleus sampling (top-p). The final answer is determined by selecting the response that occurs most frequently among these outputs (Wang et al., 2023). This method is particularly effective for improving accuracy in reasoning tasks by leveraging diversity in outputs. For example, in a classification task, the model could generate three chain-of-thought outputs for a sentiment analysis problem (e.g., positive, negative, neutral) and determine the final label through a majority vote among the outputs.

  - **Prompt-Chaining (Sequential Chaining):** A method where multiple related prompts are provided in sequence, with each prompt building on the output of the previous one. This step-by-step approach helps guide the model’s reasoning process, enabling it to tackle complex tasks incrementally. This technique requires the JSON chat feature to be enabled, as it relies on this functionality to chain the conversation.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:32 +0200

</div>

</div>
